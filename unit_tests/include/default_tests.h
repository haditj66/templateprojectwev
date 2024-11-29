

#pragma once


#include "gtest/gtest.h"



//using namespace templateprojectwev_cp;
//using namespace templateprojectwev_i::msg;
//--------------------------------------------------------
//test fixture
//--------------------------------------------------------
class default_tests: public ::testing::Test {
public:



   void SetUp( ) {
       // code here will execute just before the test ensues


   }

   void TearDown( ) {
       // code here will be called just after the test completes.
       // ok to go through exceptions from here if need be
       // delete world;
       // delete grid;
   }

   // put in any custom data members that you need
};





//--------------------------------------------------------
//tests
//--------------------------------------------------------

// a test  using the test fixture
TEST_F(default_tests, add_object_to_world) {


    // Gameobject g(world, false);
    //g.Getisstatic() = true;
//    g.posx = 4;
//    g.posy = 1;
    // auto res = world->AddObjectToWorld(&g,1,3);
    // EXPECT_TRUE(world->Getnumofgameobjects() == 1);
    // EXPECT_TRUE(res.result == AddObjectResponse::SUCCESS);

}

TEST_F(default_tests, spawn_gameobject) {

   //  Gameobject g(world, false);
   //  g.SpawnObject();
   // EXPECT_TRUE(world->Getnumofgameobjects() == 1);

}

