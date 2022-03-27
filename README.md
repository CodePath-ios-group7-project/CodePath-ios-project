# Flea Market

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
It's designed for people in same city to trade second-hand items. As a seller: Snap a photo of something you'd like to sell, add the details, listing title and select the related category, then post it to the app. As a buyer: add the item you like to cart, and submi a purchase request or add to wishlist.

### App Evaluation
- **Category:** Shopping/ buy & sell
- **Mobile:** This app would be primarily developed for mobile but may have web version for computer later on, similar to Amazon shopping.
- **Story:** Group similar items based on their categories. Users can send message to sellers to ask for more details about the items.
- **Market:** Any one who want to buy and sell second-hand items can use this app. In order to make sure the transaction takes place in the same city, users should locate themselves at the beginning.
- **Habit:** This app could be used as often or seldom as the user wanted. There is no deadline for selling items, just put it on app until it has been sold or you don't want to sell.
- **Scope:** At this point we only support local transactions. Users should buy and sell items based on their location. And they can choose any payment method they like when doing face-to-face transactions. And later on, we will develop more funcstions that allow users to buy products from othe cities, and support online payment.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**



+ The users can list items
  1. The users can upload photos of the items
  2. The users can upload text detail description of the items 
  3. The users can list price of the items 
* The users can create an account and log in 
* The users can fill in their personal information for their user profile
* The users communicate through a messaging system 
* The users can look at a feed of nearby used items 
* The users can look at more details of an item by tapping on it
* The users can search used items by key word. 

**Optional Nice-to-have Stories**

* The app can locate users 
* The users can pay online for their items

### 2. Screen Archetypes

* Welcome Screen
    * Allow user to select Sign in or Register options
* Register Screen
    * Allow user to sign up with valid username and password
* Login Screen
    * Allow user to log in with valid username and password
* Home Screen
    * User can see what product is being sold, post listed by creation time.
* Item Detail Screen
    * User can see the product's detail.(price, location, title, picture, discrition...)
* Search Screen
    * Allow user to search their product (Ebay Search screen example)
* Search Result Screen
    * Allow user to check their search result.
* Create Post Screen
    * Allow user to post their product 
* Message Screen
    * User can check the recent chat history. 
* Individual Message Screen
    * User can send message to communicate with a product owner (example when we book in Airbnb)
* Profile Screen
    * User can modify their personal information, wishling and posts history in the screen
* Settings Screen
    *Lets people change language, and app notification settings.

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Home Screen
* Chat
* Profile
* Search
* Post Screen

**Flow Navigation** (Screen to Screen)

* Welcome Screen - Allow user to select Sign in or Register options
    * Register Screen
    * Login Screen
* Register Screen - Allow user to sign up with valid username and password
    * Login Screen
* Login Screen - Allow user to log in with valid username and password
    * Home Screen
* Home Screen - User can see what product is being sold, post listed by creation time.
    * Item Detail Screen
* Search Screen - Allow user to search their product 
    * Search Result Screen
      * Item Detail Screen
* Create Post Screen - Allow user to post their product 
    * Home Screen
* Message Screen - User can send message to communicate with the product owner
    * Individual Chat Screen
* Profile Screen - User can modify their personal information, wishling and posts history in the screen
    * Item Detail Screen
* Settings Screen - Lets people change language, and app notification settings.
    * Profile Screen

## Wireframes
<img src="https://github.com/CodePath-ios-group9-project/CodePath-ios-project/blob/main/Wireframes/Wireframes.jpg" width=600>

### [BONUS] Digital Wireframes & Mockups

<p float="left">
  <img src="https://github.com/CodePath-ios-group9-project/CodePath-ios-project/blob/main/Wireframes/Welcome%20Screen.png" width=200>
  <img src="https://github.com/CodePath-ios-group9-project/CodePath-ios-project/blob/main/Wireframes/Register%20Screen.png" width=200> 
  <img src="https://github.com/CodePath-ios-group9-project/CodePath-ios-project/blob/main/Wireframes/Login%20Screen.png" width=200>
  <img src="https://github.com/CodePath-ios-group9-project/CodePath-ios-project/blob/main/Wireframes/Home%20Screen.png" width=200>
</p>

<p float="left">
  <img src="https://github.com/CodePath-ios-group9-project/CodePath-ios-project/blob/main/Wireframes/Item%20Detail%20Screen.png" width=200>
  <img src="https://github.com/CodePath-ios-group9-project/CodePath-ios-project/blob/main/Wireframes/Search%20Screen.png" width=200>
  <img src="https://github.com/CodePath-ios-group9-project/CodePath-ios-project/blob/main/Wireframes/Search%20Result%20Screen.png" width=200>
  <img src="https://github.com/CodePath-ios-group9-project/CodePath-ios-project/blob/main/Wireframes/New%20Post%20Screen.png" width=200>
</p>

<p float="left">
  <img src="https://github.com/CodePath-ios-group9-project/CodePath-ios-project/blob/main/Wireframes/Chats%20Screen.png" width=200>

  <img src="https://github.com/CodePath-ios-group9-project/CodePath-ios-project/blob/main/Wireframes/Individual%20Chat%20Screen.png" width=200>

  <img src="https://github.com/CodePath-ios-group9-project/CodePath-ios-project/blob/main/Wireframes/Profile%20Screen.png" width=200>
</p>

### [BONUS] Interactive Prototype

Here's a walkthrough of implemented user stories:

<img src='http://g.recordit.co/laPGNnBspN.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

## Schema 

### Data Models

#### User
| Property  | Type | Description |
| ------------- | ------------- |
| username  | String | unique id for the user account |
| password  | String | password for the user account |

#### Post
| Property  | Type | Description |
| ------------- | ------------- |
| postId  | String  | unique id for the user post (default field)  |
| author  | Pointer to User  | post author  |
| image  | File  | image that user posts  |
| title  | String  | post title  |
| discrition  | String | the detail discrition of a post item |
| itemPrice  | Number  | the price of post item  |
| itemLocation | Content Cell  | Content Cell  |
| createdAt  | DateTime  | date when post is created (default field)  |
| updatedAt  | DateTime  | date when post is last updated (default field)  |

* If you need more object (like: User, Post in above) or object property (like: postId in Post) for your screen function, 
* please create and add it by your self here.

### Networking
- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
