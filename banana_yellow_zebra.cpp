#include <iostream>
#include <string>

using namespace std;

//Creating a class for the Community Garden Project
class CommunityGarden {

public:

// Initializing the members of Community Garden
    string gardenName;
    int numParticipants;
    int numVolunteers;

// Constructor 
    CommunityGarden(string name, int numParticipants, int numVolunteers) {
        this->gardenName = name;
        this->numParticipants = numParticipants;
        this->numVolunteers = numVolunteers;
    }

// Method to get the name of the garden
    string getGardenName() {
        return gardenName;
    }

// Method to get the number of participants
    int getNumParticipants() {
        return numParticipants;
    }

// Method to get the number of volunteers
    int getNumVolunteers() {
        return numVolunteers;
    }

// Method to increase the number of participants
    void increaseNumParticipants(int addition) {
        numParticipants += addition;
    }

// Method to increase the number of volunteers
    void increaseNumVolunteers(int addition) {
        numVolunteers += addition;
    }

// Method to plant the produce
    void plantProduce() {
        cout << "Produce is being planted!" << endl;
    }

// Method to build the community
    void buildCommunity() {
        cout << "Community is being built!" << endl;
    }

};

//Creating a driver class
class CommunityGardenProject {
    public:
    
        // Method to create the garden
        void createGarden(string gardenName, int numParticipants, int numVolunteers) {
            CommunityGarden garden(gardenName, numParticipants, numVolunteers);
            cout << "Garden " << garden.getGardenName()<< " has been created!" << endl;
            cout << "Number of Participants: " << garden.getNumParticipants() << endl;
            cout << "Number of Volunteers: " << garden.getNumVolunteers() << endl;
        }
        
        // Method to get the number of participants in the garden
        void getNumParticipants(CommunityGarden garden){
            int num = garden.getNumParticipants();
            cout << "Number of Participants in Garden " << garden.getGardenName()<< ": " << num << endl;
        }
        
        // Method to get the number of volunteers in the garden
        void getNumVolunteers(CommunityGarden garden){
            int num = garden.getNumVolunteers();
            cout << "Number of Volunteers in Garden " << garden.getGardenName()<< ": " << num << endl;
        }
        
        // Method to increase number of participants in the garden
        void increaseParticipants(CommunityGarden garden, int addition) {
            int num = garden.getNumParticipants();
            garden.increaseNumParticipants(addition);
            cout << "Number of Participants in Garden " << garden.getGardenName() << " increased from " << num << " to " << garden.getNumParticipants() << endl;
        }
        
        // Method to increase number of volunteers in the garden
        void increaseVolunteers(CommunityGarden garden, int addition) {
            int num = garden.getNumVolunteers();
            garden.increaseNumVolunteers(addition);
            cout << "Number of Volunteers in Garden " << garden.getGardenName() << " increased from " << num << " to " << garden.getNumVolunteers() << endl;
        }
        
        // Method to plant the produce
        void plantProduce (CommunityGarden garden) {
            garden.plantProduce();
        }
        
        // Method to build the community
        void buildCommunity(CommunityGarden garden) {
            garden.buildCommunity();
        }
};

// Main Function
int main() {
    // Create a CommunityGardenProject
    CommunityGardenProject gardenProject;
    // Create a CommunityGarden
    gardenProject.createGarden("My Garden", 10, 5);
    // Get the number of participants
    CommunityGarden g1("My Garden", 10, 5);
    gardenProject.getNumParticipants(g1);
    // Get the number of volunteers
    gardenProject.getNumVolunteers(g1);
    // Increase the number of participants
    gardenProject.increaseParticipants(g1, 10);
    // Increase the number of volunteers
    gardenProject.increaseVolunteers(g1, 5);
    // Plant the produce
    gardenProject.plantProduce(g1);
    // Build the community
    gardenProject.buildCommunity(g1);
    
    return 0;

}