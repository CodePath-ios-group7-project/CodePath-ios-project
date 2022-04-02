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
| ------------- | ------------- | ------------- |
| username  | String | unique id for the user account |
| password  | String | password for the user account |
| profileImage  | File | profile image for the user |
| nickname  | String | nickname for the user |
| userLocation  | String | location for the user |

#### Post
| Property  | Type | Description |
| ------------- | ------------- | ------------- |
| postId  | String  | unique id for the user post (default field)  |
| author  | Pointer to User  | post author  |
| image  | File  | image that user posts  |
| title  | String  | post title  |
| discrition  | String | the detail discrition of a post item |
| itemPrice  | Number  | the price of post item  |
| category | String  | the category of post item  |
| itemLocation | String  | the location of post item  |
| createdAt  | DateTime  | date when post is created (default field)  |
| updatedAt  | DateTime  | date when post is last updated (default field)  |

#### Message
| Property  | Type | Description |
| ------------- | ------------- | ------------- |
| messageId  | String | unique id for the Message |
| sender  | Pointer to User | message sender |
| senderName  | String | message sender's nickname |
| receiver  | Pointer to User | message receiver |
| messageContent  | String | the message Content |
| sentAt  | DateTime | date when message is created (default field) |

#### Wishlist
| Property  | Type | Description |
| ------------- | ------------- | ------------- |
| itemName  | String | unique id for the item |
| image  | File  | image of item |
| rank  | Number | rank of item on the wishlist |
| itemPrice  | Number | price of item |
| seller  | Pointer to User | the seller of the item |


* If you need more object (like: User, Post in above) or object property (like: postId in Post) for your screen function, 
* please create and add it by your self here.
* different datatype in swift is list here for reference https://docs.parseplatform.org/rest/guide/#data-types 

### Networking

#### part 1:  this part focus on user object's operation. -- Ziyue Wang
* Welcome Screen
    * no API required
* Register Screen
    * (Create/POST) Create a new **user**
    ``` swift
    let user = PFUser()
          user.username = usernameField.text
          user.password = passwordField.text
        
        user.signUpInBackground { (success, error) in
            if (success)
            {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            }
            else
            {
                print("Error: \(error?.localizedDescription)")
            }
    }
    ```
    
* Login Screen
    * (Read/GET)log in to **user** account
    ``` swift
    let username = usernameField.text!
        let password = passwordField.text!
        
        PFUser.logInWithUsername(inBackground:username, password:password) {
          (user, error) in
          if user != nil {
            self.performSegue(withIdentifier: "loginSegue", sender: nil)
          } else {
            print("Error: \(error?.localizedDescription)")
          }
    }
    ```
* Edit Profile Screen (new screen)
    * (Update/PUT) Update **user** profile image
    ``` swift
    let Profile= PFObject(className:"Profile")
		profile["image"] = image
	    if (succeeded) {
		print("Profile image updated")
		// The object has been saved.
	    } else {
		print(error.localizedDescription)
		// There was a problem, check error.description
	    }
    }
    ```
    * (Update/PUT) Update **user** nickname
    ``` swift
    let Profile= PFObject(className:"Profile")
		profile["nickname"] = nickname
	    if (succeeded) {
		print("Profile nickname updated")
		// The object has been saved.
	    } else {
		print(error.localizedDescription)
		// There was a problem, check error.description
	    }
    }
    ```
    * (Update/PUT) Update **user** location
    ``` swift
    let Profile= PFObject(className:"Profile")
		profile["location"] = location
	    if (succeeded) {
		print("Profile location updated")
		// The object has been saved.
	    } else {
		print(error.localizedDescription)
		// There was a problem, check error.description
	    }
    }
    ```

#### part 2:  this part involve post，wishlist，message APIs, the layout is simimlar. -- Michael Ha
* Home Screen
    * (Read/GET)Query last 20 **post**, listed by creation time.(when user draw to the end, it will load more. )
    ``` swift
    let query = PFQuery(className: "Items")
    query.includeKey("author")
    query.limit = 20
    
    query.findObjectsInBackground { (items, error) in
        if items != nil {
            self.items = items!
            self.tableView.reloadData()
        } else {
            print("this is item check: \(items)")
        }
        
    }
    ```
    * (?/?) add post to **wishlist**
    * (?/?) remove post from **wishlist**
    * (?/?) send **message** to item owner
    * (?/?) purchase item (optional)
* Search Screen [combined with the Search Result Screen]
    * (Read/GET) Query last 20 posts **post** by a keyword (in title, discrition, itemLocation, category properties). 
    * (Read/GET) Query last 20 posts **post** by a category 
    * (?/?]]) add post to **wishlist**
    * (?/?) remove post from **wishlist**
    * (?/?) send **message** to item owner
    * (?/?) purchase item (optional)

#### part 3:  this part involve post，wishlist，message APIs, the layout is simimlar. -- Christian Dung Nguyen
* Item Detail Screen
    * (Read/GET)Query the deatils of a item (price, location, title, picture, discrition...) [or you can use the data from previous creen's query]
    	```swift
		let query = PFQuery(className:"Post")
		query.getObjectInBackground(withId: "xWMyZEGZ") { (Post, error) in
    	if error == nil {
           print("Successfully open item detail screen")
		// The object has been saved.
   	 } else {
          print(error.localizedDescription)
		// There was a problem, check error.description
    	}
    	}
	  }
	```
    * (Create/POST) add post to **wishlist**
    	```swift
	    let wishlist = PFObject(className:"Wishlist")
            wishlist["itemName"] = itemID
	    wishlist["image"] = item.png
            wishlist["itemPrice"] = price
	    wishlist["seller"] = otherUser
            wishlist.saveInBackground { (succeeded, error)  in
    	if (succeeded) {
        	print("Successfully added to Wishlist")
		// The object has been saved.
    	} else {
        print(error.localizedDescription)
		// There was a problem, check error.description
    	}
	  }
	```
    * (DELETE) remove post from **wishlist**
    	```swift
	   PFObject.deleteAll(inBackground: postObjectArr) { (succeeded, error) in
    	if (succeeded) {
	  print("Successfully delete item from wishlist")
        // The array of objects was successfully deleted.
   		 } else {
           print(error.localizedDescription)
		// There was a problem, check error.description
    	 }
	  }
	```

    * (Create/POST) send **message** to item owner
    	```swift
		// special values are provided as properties (created by default):objectId, updatedAt, createdAt (need to double check)

		let message= PFObject(className:"Message")
		message["sender"] = currentUser
		message["senderName"] = surrentUser["nickname"]
		message["receiver"] = otherUser
		message["messageContent"] = messageContent

		message.saveInBackground { (succeeded, error)  in
	    if (succeeded) {
		print("Successfully sent \(messages.count) message.")
		// The object has been saved.
	    } else {
		print(error.localizedDescription)
		// There was a problem, check error.description
	    }
		}
	```
* Create Post Screen
    * (Create/POST) Create a new **post** object. 
    	```swift
	    let wishlist = PFObject(className:"Post")
            post["postId"] = itemID
	    post["image"] = item.png
            post["itemPrice"] = price
	    post["description"] = inputDescription
	    post["category"] = inputCatrgory
	    post["itemLocation"] = inputLocation
	    post["createdAt"] = createTime
            wishlist.saveInBackground { (succeeded, error)  in
    	if (succeeded) {
        	print("Successfully create item post")
		// The object has been saved.
    	} else {
        print(error.localizedDescription)
		// There was a problem, check error.description
    	}
	  }
	```
* Edit Post Screen (new)
    * (Update/PUT) Update existing **posts** object. 
    	```swift
	  let query = PFQuery(className:"Post")
	  query.getObjectInBackground(withId: "xWMyZEGZ") { (post: PFObject?, error: Error?) in
                    if let error = error {
        print(error.localizedDescription)
        } else if let post = post {
        post["description"] = newPostDescription 
        post["category"] = newCategory
        post.saveInBackground()
         }
        }
	```

#### part 4:  this part focus on message object's operation. -- Weiyuan Wu
* Message Screen. 
    * (Read/GET) Query the most recently contacter history. 
	```swift
	// query the current User's recently message (as sender/receiver) history.

	let sendOutMessages = PFQuery(className:"Message")
	sendOutMessages.whereKey("sender", equalTo: currentUser)

	let sendInMessages = PFQuery(className:"Message")
	sendInMessages.whereKey("receiver", equalTo: currentUser)

	let query = PFQuery.orQuery(withSubqueries: [sendOutMessages, sendInMessages])
	query.order(byDescending: "sentAt")

	// query.limit = 20 // limit to at most 20 results; issue: maybe the latest messages are from same person
	query.findObjectsInBackground { (posts: [PFObject]?, error: Error?) in
	   if let error = error {
	      print(error.localizedDescription)
	   } else if let messages = messages {
	      print("Successfully retrieved \(messages.count) messages.")
	      // TODO: Do something with posts...
	   }
	}
	```
* Individual Message Screen
    * (Read/GET) User can see the Individual **Message** history.
	```swift
	// query the history messages between current user and another particular user -- Compound Queries

	let sendOutMessages = PFQuery(className:"Message")
	sendOutMessages.whereKey("sender", equalTo: currentUser)
	sendOutMessages.whereKey("receiver", equalTo: otherUser)

	let sendInMessages = PFQuery(className:"Message")
	sendInMessages.whereKey("sender", equalTo: otherUser)
	sendInMessages.whereKey("receiver", equalTo: currentUser)

	let query = PFQuery.orQuery(withSubqueries: [sendOutMessages, sendInMessages])
	query.order(byDescending: "sentAt")
	// query.limit = 100 // limit to at most 100 results;

	query.findObjectsInBackground { (results: [PFObject]?, error: Error?) in
	    if let error = error {
		// The request failed
		print(error.localizedDescription)
	    } else if let messages = messages {
		print("Successfully retrieved \(messages.count) messages.")
		// results contains messages between current user and another particular user.
	    }
	}
	```

    * (Create/POST) User can send **message** to communicate with a product owner.
    
	```swift
	// special values are provided as properties (created by default):objectId, updatedAt, createdAt (need to double check)

	let message= PFObject(className:"Message")
	message["sender"] = currentUser
	message["senderName"] = currentUser["nickname"]
	message["receiver"] = otherUser
	message["messageContent"] = messageContent

	message.saveInBackground { (succeeded, error)  in
	    if (succeeded) {
		print("Successfully sent \(messages.count) message.")
		// The object has been saved.
	    } else {
		print(error.localizedDescription)
		// There was a problem, check error.description
	    }
	}
	```

#### part 5:  this part focus on wishlist object's operation. involve wishlist and posts APIs -- Dustin Burda
* Profile Screen. [you will need to create a wishlist object in Data Models, so that you can implement 'create,read,update,delet' on it]
    * (Update/PUT) Update user **wishlist** 
    * (Read/GET) Query user's **wishlist** 
    * (Read/GET) Query all **posts** where user is author
    * (Delete) Delete existing **posts**
* Settings Screen [optional]
    *  (?/?)Lets people change password, change language, and app notification settings. (optional)

#### * please read the above discrition and we will discuss the Work Assignment Plan in the coming meeting, I have all work assign into 5 parts, each teammember should be in charge of one part. (You will be responsible for the implementation)

#### * I list my idea in Schema, if you have issue when implement the App, feel free to disscuss and modify it. Instead of following my writing, you should be responsible for your Work Assignment.

#### * this week (by Friday April 1st), you will need to [Create basic snippets for each Parse network request] under the screen that you are incharged.
