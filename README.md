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
* The users can locate users and search for used items near their location 
* The users can look at a feed of nearby used items 
* The users can look at more details of an item by tapping on it

**Optional Nice-to-have Stories**

* The users can pay online for their items

### 2. Screen Archetypes

* Login 
* Register Screen - User signs up or logs into their account
   * Upon Download/Reopening of the application, the user is prompted to log in to gain access to their profile information to buy the goods they want
* Home Screen - User can see what product is being sold or discount
* Search Screen
    * Allow user to search their product (Ebay Search screen example)
* Message Screen - Chat for users to communicate (direct 1-on-1)
    * User can send their product to ask with the owner (example when we book in Airbnb)
* Seling Screen
    * User can sell their product in the screen
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

* Log-In Screen
   * Account creation if no account
   * Home screen with recent posts otherwise
* Home Screen
   * If item clicked on, sent to Item Detail Screen with photo, price, location, etc
* Profile Screen
   * Post image and text fields to be modified/deleted
   * Profile image field to be modified
* Post Screen
   * Photo image field to be modified
   * Title, price, location text fields to be modified

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
[This section will be completed in Unit 9]
### Models
[Add table of models]
### Networking
- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
