#include <iostream>
#include "tree.hpp"
using namespace std;
#define COUNT 10


/*
Constructor for a Tree object
*/
Tree::Tree()
{
  this->root = NULL;
}

/*
Prints a binary tree in a 2D fashion.
Note: The image of the tree is left rotated by 90 degrees.
*/
void Tree::print2DUtil(Node *root, int space)
{
    // Base case
    if (root == NULL)
        return;

    // Increase distance between levels
    space += COUNT;

    // Process right child first
    print2DUtil(root->right, space);

    // Print current node after space
    // count
    printf("\n");
    for (int i = COUNT; i < space; i++)
        printf(" ");
    printf("%d\n", root->data);

    // Process left child
    print2DUtil(root->left, space);
}

void Tree::preOrderTraverse(Node *node)
{
  if (node == NULL)
        return;

    /* first print data of node */
    cout << node->data << " ";

    /* then recur on left sutree */
    preOrderTraverse(node->left);

    /* now recur on right subtree */
    preOrderTraverse(node->right);
}


/*
***************************************************************************
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
                        Implement this function
            This function deletes all the nodes in the tree
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
***************************************************************************
*/
void Tree::deleteTree(Node *node)
{
    if (node == NULL) return;

    /*TODO first delete both subtrees */
    deleteTree(node->left);
    deleteTree(node->right);

    /* TODO then delete the node */
    cout<<"\n Deleting node:"<< node->data;
    free(node);
}

/*
***************************************************************************
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
                        Implement this function
          This function gives the sum of all the nodes in the tree
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
***************************************************************************
*/
int Tree::sumNodes(Node *root,int depth)
{
    if(root != NULL)
    {
        int leftSum = sumNodes(root->left, depth + 1);
        int rightSum = sumNodes(root->right, depth + 1);
        cout << root->data;
        if (depth != 0)
        {
            cout << " ";
        }
        return leftSum + rightSum + root->data;
    }
    else
        return 0;

}

/*
 Creates a tree of 7 elements
 */
void Tree::createTree()
{
  Node *root         = new Node(19);
  root->left         = new Node(17);
  root->right        = new Node(20);
  root->left->left   = new Node(14);
  root->left->left->right  = new Node(15);
  root->left->left->left  = new Node(7);
  root->left->left->left->right = new Node(12);
  this->root = root;
}
