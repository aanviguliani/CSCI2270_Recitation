#include <iostream>
#include <fstream>

using namespace std;


//Uncomment the lines and implement the TODOs in the resizing logic
void resize(int *(&arrayPtr), int *capacity)
{
	// TODO increase the capacity by two times
	int newCapacity = *capacity * 2;
  cout<<"Resizing from "<<*capacity<<" to "<<newCapacity<<endl;

	// TODO dynamically allocate an array of size newCapacity
	int *newArray = new int[newCapacity];
	//cout << "new array" << endl;
	int i = 0;
	// TODO copy all data from oldArray to newArray
	while(i < *capacity){
		newArray[i] = arrayPtr[i];
		i++;
	}

	//cout << "after for loop " << endl;
	// TODO free the memory associated with oldArray
	delete []arrayPtr;
	//cout << "deleted " << endl;
	arrayPtr = newArray;
	*capacity = newCapacity;

}

int main(int argc, char* argv[])
{
	if(argc != 2)
	{
		return -1;
	}
	string filename = argv[1];
	ifstream data;
	data.open(filename.c_str());

	int capacity = 10;
	int *arrayPtr;

	// TODO Dynamically allocate space here for the array
	arrayPtr = new int[capacity];
	int numOfElement = 0;
	string temp;

	if(data.is_open())
	{
		while(getline(data, temp))
		{
			int toBeInsert = stoi(temp);
			if(numOfElement == capacity)
			{
				// Complete this function
				resize(arrayPtr, &capacity);
			}
			arrayPtr[numOfElement] = toBeInsert;
			numOfElement++;
		}
		data.close();
	}
	/*else
	{
		cout << "not opening" << endl;
	}*/

	for(int i = 0; i < numOfElement; i++)
	{
		cout << "Num: " << arrayPtr[i] << endl;
	}
	return 0;
}
