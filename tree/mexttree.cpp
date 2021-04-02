/***************************************************************************
 *   Copyright (C) 2006 by BUI Quang Minh, Steffen Klaere, Arndt von Haeseler   *
 *   minh.bui@univie.ac.at   *
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 *   This program is distributed in the hope that it will be useful,       *
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of        *
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
 *   GNU General Public License for more details.                          *
 *                                                                         *
 *   You should have received a copy of the GNU General Public License     *
 *   along with this program; if not, write to the                         *
 *   Free Software Foundation, Inc.,                                       *
 *   59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.             *
 ***************************************************************************/
#include "mexttree.h"
#include "alignment/alignment.h"

void MExtTree::generateRandomTree(TreeGenType tree_type, Params &params, bool binary) {
	Alignment *alignment = NULL;
	if (params.aln_file) {
		// generate random tree with leaf sets taken from an alignment
		alignment = createAlignment(params.aln_file, params.sequence_type, params.intype, params.model_name);
		params.sub_size = alignment->getNSeq();
	}
	if (params.sub_size < 3) {
		outError(ERR_FEW_TAXA);
	}
    
	switch (tree_type) {
	case YULE_HARDING: 
		generateYuleHarding(params, binary);
		break;
	case UNIFORM:
		generateUniform(params.sub_size, binary);
		break;
	case CATERPILLAR:
		generateCaterpillar(params.sub_size);
		break;
	case BALANCED:
		generateBalanced(params.sub_size);
		break;
	case STAR_TREE:
		generateStarTree(params);
		break;
    case BIRTH_DEATH:
        generateBirthDeath(params.sub_size, params.birth_rate/(params.birth_rate+params.death_rate), binary);
        break;
	default:
		break;
	}
	if (!alignment) return;
	NodeVector taxa;
	getTaxa(taxa);
	ASSERT(taxa.size() == params.sub_size);
	for (NodeVector::iterator it = taxa.begin(); it != taxa.end(); it++)
		(*it)->name = alignment->getSeqName((*it)->id);
}

void MExtTree::setZeroInternalBranches(int num_zero_len) {
	NodeVector nodes, nodes2;
	generateNNIBraches(nodes, nodes2);
	if (num_zero_len > nodes.size()) outError("The specified number of zero branches is too much");
	for (int i = 0; i < num_zero_len;) {
		int id = random_int(nodes.size());
		if (!nodes[id]) continue;
		i++;
		nodes[id]->findNeighbor(nodes2[id])->length = 0.0;
		nodes2[id]->findNeighbor(nodes[id])->length = 0.0;
		nodes[id] = NULL;
		nodes2[id] = NULL;
	}
}

void MExtTree::generateCaterpillar(int size) {
	if (size < 3)
		outError(ERR_FEW_TAXA);
	root = newNode();
	int i;
	NodeVector myleaves;
	NodeVector innodes;
	Node *node;
	double len;

	innodes.push_back(root);
	// create initial tree with 3 leaves
	for (i = 0; i < 3; i++)
	{
		node = newNode();
		len = random_double();
		root->addNeighbor(node, len);
		node->addNeighbor(root, len);
		myleaves.push_back(node);
	}

	// additionally add a leaf
	for (i = 3; i < size; i++)
	{
		int index;
		index = i-1;

		node = myleaves[index];
		innodes.push_back(node);
		// add the first leaf
		Node *newleaf = newNode();
		len = random_double();
		node->addNeighbor(newleaf, len);
		newleaf->addNeighbor(node, len);
		myleaves[index] = newleaf;

		// add the second leaf
		newleaf = newNode();
		len = random_double();
		node->addNeighbor(newleaf, len);
		newleaf->addNeighbor(node, len);
		myleaves.push_back(newleaf);

	}

	root = myleaves[0];
	// indexing the leaves
	setLeavesName(myleaves);

	leafNum = myleaves.size();
	nodeNum = leafNum;
	initializeTree();

}


void MExtTree::generateBalanced(int size) {
	if (size < 3)
		outError(ERR_FEW_TAXA);
	root = newNode();
	int i;
	NodeVector myleaves;
	Node *node;
	double len;

	myleaves.push_back(root);
	// create initial tree with 2 leaves
	node = newNode();
	len = random_double();
	root->addNeighbor(node, len);
	node->addNeighbor(root, len);
	myleaves.push_back(node);

	while (myleaves.size() < size) {

		int cur_size = myleaves.size();
		// additionally add a leaf
		for (i = 0; i < cur_size && myleaves.size() < size; i++)
		{
			int index = i;
	
			node = myleaves[index];
			// add the first leaf
			Node *newleaf = newNode();
			len = random_double();
			node->addNeighbor(newleaf, len);
			newleaf->addNeighbor(node, len);
			myleaves[index] = newleaf;
	
			// add the second leaf
			newleaf = newNode();
			len = random_double();
			node->addNeighbor(newleaf, len);
			newleaf->addNeighbor(node, len);
			myleaves.push_back(newleaf);
	
		}
	}

	root = myleaves[0];
	// indexing the leaves
	setLeavesName(myleaves);

	leafNum = myleaves.size();
	nodeNum = leafNum;
	initializeTree();

}

/**
	generate a random tree following uniform model
*/
void MExtTree::generateUniform(int size, bool binary)
{
	if (size < 3)
		outError(ERR_FEW_TAXA);
	int i;

	// list of left- and right-end of branches
	NodeVector leftend, rightend, myleaves;
	Node *node;
	double len;

	root = newNode(0, "0");
	// create initial tree with 2 leaves
	node = newNode(1, "1");
	len = random_double();
	root->addNeighbor(node, len);
	node->addNeighbor(root, len);

	leftend.push_back(root);
	rightend.push_back(node);

	myleaves.push_back(root);
	myleaves.push_back(node);

	// additionally add a leaf
	for (i = 2; i < size; i++)
	{
		int index;
		index = random_int(2*i-3);
		//cout << "step " << i << " left = " << leftend[index]->id << " right = " << rightend[index]->id << endl;

		// add an internal node
		Node *newnode = newNode(size+i-2);
		// reconnect the left end
		node = leftend[index];
		for (NeighborVec::iterator it = node->neighbors.begin(); it != node->neighbors.end(); it++) 
			if ((*it)->node == rightend[index]) {
				len = random_double();
				(*it)->node = newnode;
				(*it)->length = len;
				newnode->addNeighbor(node, len);
				//cout << "  left " << leftend[index]->id << " " << newnode->id << endl;
				break;
			}
		// reconnect the right end
		node = rightend[index];
		for (NeighborVec::iterator it = node->neighbors.begin(); it != node->neighbors.end(); it++) 
			if ((*it)->node == leftend[index]) {
				len = random_double();
				(*it)->node = newnode;
				(*it)->length = len;
				newnode->addNeighbor(node, len);
				//cout << "  right " << rightend[index]->id  << " " << newnode->id  << endl;
				break;
			}

		// add a new leaf
		Node *newleaf = newNode(i, i);
		len = random_double();
		newnode->addNeighbor(newleaf, len);
		newleaf->addNeighbor(newnode, len);

		// update the leftend and rightend list
		leftend.push_back(newnode);
		rightend.push_back(rightend[index]);

		leftend.push_back(newnode);
		rightend.push_back(newleaf);

		rightend[index] = newnode;

		myleaves.push_back(newleaf);

	}

	// indexing the leaves
	setLeavesName(myleaves);

	leafNum = size;
	nodeNum = leafNum;
	initializeTree();

}

/**
    generate a random tree following birth-death model
    @param size number of taxa
    @param rescale_birth_rate (birth_rate/(birth_rate+death_rate)
    @param binary TRUE if you want to generate a binary tree
*/
void MExtTree::generateBirthDeath(int size, double scale_birth_rate, bool binary)
{
    if (size < 3)
        outError(ERR_FEW_TAXA);
    
    // make sure birth_rate > death_rate
    ASSERT(scale_birth_rate > 0.5);
    
    // list of leaves
    NodeVector myleaves;
    Node *node, *new_node;
    double len, random_num;
    int i;
    
    // retry the birth-death process (up to 1000 times) until successfully generating the tree
    for (int retry = 0; retry < 1000; retry++)
    {
        i  = 0;
        myleaves.clear();
        root = newNode();
        myleaves.push_back(root);
        
        while (myleaves.size() < size)
        {
            // randomly select a leaf
            int current_node_index = random_int(myleaves.size());
            node = myleaves[current_node_index];
            
            // randomly select a birth/death event based on its probability
            random_num = random_double();
            
            // birth event occurs
            if (random_num <= scale_birth_rate)
            {
                // create 2 new leaves
                for (int j = 0; j < 2; j++) {
                    i++;
                    new_node = newNode(i, i);
                    len = random_double();
                    node->addNeighbor(new_node, len);
                    new_node->addNeighbor(node, len);
                    myleaves.push_back(new_node);
                }
                
                // remove the current node from the list of leaves
                myleaves.erase(myleaves.begin()+current_node_index);
            }
            // death event occurs
            else
            {
                // remove the current node from the tree
                Node *dad_node;
                // if the death event occurs when the tree has only root node -> restart
                if (node->neighbors.size() == 0)
                    break;
                // otherwise, retrieve the dad of the current node
                else
                    dad_node = node->neighbors[0]->node;
                
                // if dad_node is root -> delete the neiborhood to the current node
                if (dad_node == root)
                {
                    for (NeighborVec::iterator it = dad_node->neighbors.begin(); it != dad_node->neighbors.end(); it++)
                    {
                        if ((*it)->node == node)
                        {
                            dad_node->neighbors.erase(it);
                            break;
                        }
                    }
                }
                // if dad_node is an internal node -> connect the grandfather_node to sibling_node
                else
                {
                    // detect grandfather_node and sibling_node
                    Node *grandfather_node, *sibling_node;
                    double length_from_grandfather = 0, length_from_sibling = 0;
                    for (NeighborVec::iterator it = dad_node->neighbors.begin(); it != dad_node->neighbors.end(); it++)
                    {
                        if ((*it)->node == node)
                            continue;
                        // detect sibling
                        else if((*it)->node->id > dad_node->id) {
                            sibling_node = (*it)->node;
                            length_from_sibling = (*it)->length;
                        }
                        // detect grand_father
                        else
                        {
                            grandfather_node = (*it)->node;
                            length_from_grandfather = (*it)->length;
                        }
                    }
                    
                    // make sure grandfather_node and sibling_node are found
                    ASSERT(grandfather_node && sibling_node);
                    
                    // connect grand_father to sibling
                    for (NeighborVec::iterator it = grandfather_node->neighbors.begin(); it != grandfather_node->neighbors.end(); it++)
                    {
                        if ((*it)->node == dad_node)
                        {
                            (*it)->node = sibling_node;
                            (*it)->length = length_from_sibling + length_from_grandfather;
                            break;
                        }
                    }
                    
                    // connect sibling to grand_father
                    for (NeighborVec::iterator it = sibling_node->neighbors.begin(); it != sibling_node->neighbors.end(); it++)
                    {
                        if ((*it)->node == dad_node)
                        {
                            (*it)->node = grandfather_node;
                            (*it)->length = length_from_sibling + length_from_grandfather;
                            break;
                        }
                    }
                    
                    // delect dad_node
                    delete dad_node;
                }
                
                // remove the current node from the list of leaves
                myleaves.erase(myleaves.begin()+current_node_index);
                
                // delect the current node
                delete node;
            }
            
            // break the loop in case unfortunately all species are died.
            if (myleaves.size() <= 0) break;
        }
        
        // check if the tree has been successfully generated or not
        if (myleaves.size() == size)
            break;
    }
    
    // show error if the program failed to generate the tree after reaching the maximum retry.
    if (myleaves.size() != size)
        outError("Failed to generate the random tree after 1000 attempts. Please retry with other birth_rate and death_rate.");
    
    // indexing the leaves
    setLeavesName(myleaves);

    leafNum = size;
    nodeNum = leafNum;
    initializeTree();
}

/**
	generate a random tree following Yule Harding model
*/
void MExtTree::generateYuleHarding(Params &params, bool binary) {
	int size = params.sub_size;
	if (size < 3)
		outError(ERR_FEW_TAXA);
	root = newNode();
	int i;
	NodeVector myleaves;
	NodeVector innodes;
	Node *node;
	double len;

	innodes.push_back(root);
	// create initial tree with 3 leaves
	for (i = 0; i < 3; i++) {
		node = newNode();
		len = randomLen(params);
		root->addNeighbor(node, len);
		node->addNeighbor(root, len);
		myleaves.push_back(node);
	}

	// additionally add a leaf
	for (i = 3; i < size; i++)
	{
		int index;
		if (binary) {
			index = random_int(i);
		} else {
 			index = random_int(i + innodes.size());
		}
		if (index < i) {
			node = myleaves[index];
			innodes.push_back(node);
			// add the first leaf
			Node *newleaf = newNode();
			len = randomLen(params);
			node->addNeighbor(newleaf, len);
			newleaf->addNeighbor(node, len);
			myleaves[index] = newleaf;
	
			// add the second leaf
			newleaf = newNode();
			len = randomLen(params);
			node->addNeighbor(newleaf, len);
			newleaf->addNeighbor(node, len);
			myleaves.push_back(newleaf);
		}
		else {
			node = innodes[index-i];
			// add only 1 new leaf
			Node *newleaf = newNode();
			len = randomLen(params);
			node->addNeighbor(newleaf, len);
			newleaf->addNeighbor(node, len);
			myleaves.push_back(newleaf);
			
		}

	}

	root = myleaves[0];
	// indexing the leaves
	setLeavesName(myleaves);

	leafNum = myleaves.size();
	nodeNum = leafNum;
	initializeTree();


}

void MExtTree::generateConstrainedYuleHarding(Params &params, MTree* constraint_tree, StrVector &taxnames) {
	int size = taxnames.size();
	if (size < 3)
		outError(ERR_FEW_TAXA);
	NodeVector myleaves;
	NodeVector innodes;
    StrVector names;
    StringIntMap namemap;
    StrVector::iterator it;
    
    // copy constraint tree and resolve multifurcation
    copyTree(constraint_tree);
    resolveMultifurcation();
    
    getTaxa(myleaves);
    getTaxaName(names);
    for (it = names.begin(); it != names.end(); it++)
        namemap[*it] = 1;

    // add the remaining taxa names
    for (it = taxnames.begin(); it != taxnames.end(); it++)
        if (namemap.find(*it) == namemap.end())
            names.push_back(*it);
    ASSERT(names.size() == taxnames.size());
    my_random_shuffle(names.begin()+leafNum, names.end());

	// additionally add a leaf
	for (; leafNum < size; leafNum++)
	{
		int index;
		index = random_int(leafNum);
        Node *leaf = myleaves[index];
        Node *dad = leaf->neighbors[0]->node;
        // add the first leaf
        
        Node *newleaf = newNode(leafNum, names[leafNum].c_str());
        Node *node = newNode();

        // redirect the current leaf
        node->addNeighbor(leaf, -1.0);
        leaf->updateNeighbor(dad, node);
        
        // add the new leaf
        node->addNeighbor(newleaf, -1.0);
        newleaf->addNeighbor(node, -1.0);

        // connect dad and new node
        dad->updateNeighbor(leaf, node);
        node->addNeighbor(dad, -1.0);

        myleaves.push_back(newleaf);
	}

    // assign random branch lengths
    myleaves.clear();
    innodes.clear();
    getBranches(myleaves, innodes);
    for (int i = 0; i < myleaves.size(); i++) {
        double len = randomLen(params);
        myleaves[i]->findNeighbor(innodes[i])->length = len;
        innodes[i]->findNeighbor(myleaves[i])->length = len;
    }
    

	nodeNum = leafNum;
	initializeTree();

}

void MExtTree::generateStarTree(Params &params) {
	generateYuleHarding(params);
	NodeVector nodes, nodes2;
	generateNNIBraches(nodes, nodes2);
	for (int i = 0; i < nodes.size(); i++) {
		nodes[i]->findNeighbor(nodes2[i])->length = 0.0;
		nodes2[i]->findNeighbor(nodes[i])->length = 0.0;
	}

}

void MExtTree::generateRandomBranchLengths(Params &params, Node *node, Node *dad) {
	if (!node) node = root;
	FOR_NEIGHBOR_IT(node, dad, it) {
		double len = randomLen(params);
		(*it)->length = len;
		(*it)->node->findNeighbor(node)->length = len;
		generateRandomBranchLengths(params, (*it)->node, node);
	}
}


void MExtTree::setLeavesName(NodeVector &myleaves) {
	for (int i = 0; i < myleaves.size(); i++)
	{
		myleaves[i]->id = i;
		stringstream str;
		str << 'T' << myleaves[i]->id;
		myleaves[i]->name = str.str();
	}
}


void MExtTree::createCluster(NodeVector &taxa, mmatrix(int) &clusters, Node *node, Node *dad) {
	if (node == NULL) node = root;
	FOR_NEIGHBOR_IT(node, dad, it) {
		// if both end-nodes are bifurcating
		Node *child = (*it)->node;
		if (!child->isLeaf()) child->name = "";
		if (node->degree() == 3 && child->degree() == 3) { 
			int count = 0;
			FOR_NEIGHBOR_DECLARE(child, node, it2)
				createCluster(count++, (*it2)->node, child);
			if (!rooted) {
				FOR_NEIGHBOR(node, child, it2) 
					createCluster(count++, (*it2)->node, node);
			} else createCluster(count++, node, child);


			clusters.resize(clusters.size()+1);
			for (NodeVector::iterator nit = taxa.begin(); nit != taxa.end(); nit++) {
				clusters.back().push_back((int)((*nit)->height));
			}
			child->name = "";
			child->name += clusters.size();
		}
		createCluster(taxa, clusters, child, node);
	}
}

void MExtTree::createCluster(int clu_num, Node *node, Node *dad) {
	if (node->isLeaf()) node->height = clu_num;
	FOR_NEIGHBOR_IT(node, dad, it) {
		createCluster(clu_num, (*it)->node, node);
	}
}


void MExtTree::collapseLowBranchSupport(DoubleVector &minsup, Node *node, Node *dad) {
    if (!node) node = root;
    FOR_NEIGHBOR_IT(node, dad, it) {
        collapseLowBranchSupport(minsup, (*it)->node, node);
    }
    if (!node->isLeaf() && dad && node->name != "") {
        DoubleVector vec;
        convert_double_vec(node->name.c_str(), vec, '/');
        if (vec.size() != minsup.size()) {
            cout << "Branch with name " << node->name << " ignored" << endl;
            return;
        }
        for (int i = 0; i < vec.size(); i++)
            if (vec[i] < minsup[i]) {
                // support smaller than threshold, mark this branch for deletion
                dad->findNeighbor(node)->length = -1.0;
                node->findNeighbor(dad)->length = -1.0;
                break;
            }
    }
}
