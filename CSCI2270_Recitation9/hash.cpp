// CPP program to implement hashing with chaining
#include<iostream>
#include "hash.hpp"

using namespace std;

node* HashTable::createNode(int key, node* next)
{
    node* nw = new node;
    nw->key = key;
    nw->next = next;
    return nw;
}

HashTable::HashTable(int bsize)
{
    this->tableSize= bsize;
    table = new node*[tableSize];
    for(int i=0;i<bsize;i++)
        table[i] = nullptr;
}

//function to calculate hash function
unsigned int HashTable::hashFunction(int key)
{
    return (key % tableSize);
}

// TODO Complete this function
//function to search
node* HashTable::searchItem(int key)
{
    //Compute the index by using the hash function
    int index = hashFunction(key);

    //TODO: Search the list at that specific index and return the node if found
    if(table[index] != NULL)
    {
        node* temp = table[index];
        while(temp != NULL)
        {
            if(temp->key == key)
                return temp;
            else
                temp = temp->next;
        }

    }
    return NULL;
}

//TODO Complete this function
//function to insert
bool HashTable::insertItem(int key)
{
    if(!searchItem(key))
    {
        // TODO :
        int index = hashFunction(key);
        node* temp = table[index];
        if(temp == NULL)
        {
            table[index] = createNode(key,NULL);
            return true;
        }
        else
        {
            while(temp->next != NULL)
            {
                temp = temp->next;
            }
            temp->next = createNode(key,NULL);
            return true;
        }
     }
    else{
        cout<<"duplicate entry: "<<key<<endl;
        return false;
    }

}

//TODO Complete this function
// function to display hash table
void HashTable::printTable()
{
    for (int i = 0; i < tableSize; i++) {
        cout << i <<"|| ";
        node* temp = table[i];
        while(temp != NULL)
        {
            cout << temp->key << " ";
            temp = temp->next;
        }
        cout << endl;
    }

 }
