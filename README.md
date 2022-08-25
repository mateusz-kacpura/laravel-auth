PHP 8.1 / Laravel 9

Ten projekt obejmuje stworzenie kopletnej platformy prasowej, jeśli ktoś jest zainteresowany tworzeniem ze mną zapraszam do kontaktu
This one complete the project, shared communication platform if anyone is interested in creating visited with me to contact

Obecnie aplikacja obejmuje:

This aplication connect two project from github </br>
 https://github.com/jeremykenedy</br>
 https://github.com/abby2727/true-tech-source -- w trakcie usuwania w zamian będzie używany szablon
 https://github.com/binshops/laravel-blog.git

I modified the code a little and added my own

-----------------------------------------------------------------
## Laravel Auth

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

### About
Laravel 9 with user authentication, registration with email confirmation, social media authentication, password recovery, and captcha protection. Uses official [Bootstrap 4](https://getbootstrap.com). Panel CMS for articles, comments, and example page

### Routes
/ - home page to delete
/en/strona - page in building
/panel - profil admin and administrator to change user profil and administrator have access to administrator panel
/blog_admin - CMS to create content with comments and categores of this contents

blocker	laravelblocker::blocker.index		index
blocker/create	laravelblocker::blocker.create		create
blocker	laravelblocker::blocker.store		store
blocker/{blocker}	laravelblocker::blocker.show		show
blocker/{blocker}/edit	laravelblocker::blocker.edit		edit
blocker/{blocker}	laravelblocker::blocker.update		update
blocker/{blocker}	laravelblocker::blocker.destroy		destroy
blocker-deleted	laravelblocker::blocker-deleted		index
blocker-deleted/{id}	laravelblocker::blocker-item-show-deleted		show
blocker-deleted/{id}	laravelblocker::blocker-item-restore		restoreBlockedItem
blocker-deleted-restore-all	laravelblocker::blocker-deleted-restore-all		restoreAllBlockedItems
blocker-deleted/{id}	laravelblocker::blocker-item-destroy		destroy
blocker-deleted-destroy-all	laravelblocker::destroy-all-blocked		destroyAllItems
search-blocked	laravelblocker::search-blocked		search
search-blocked-deleted	laravelblocker::search-blocked-deleted		search
activity	activity	activity	showAccessLog
activity/cleared	cleared	activity	showClearedActivityLog
activity/log/{id}		activity	showAccessLogEntry
activity/cleared/log/{id}		activity	showClearedAccessLogEntry
activity/clear-activity	clear-activity	activity	clearActivityLog
activity/destroy-activity	destroy-activity	activity	destroyActivityLog
activity/restore-log	restore-activity	activity	restoreClearedActivityLog
phpinfo	laravelPhpInfo::phpinfo	phpinfo	phpinfo
verification/needed	laravel2step::verificationNeeded	verification	showVerification
verification/verify	laravel2step::verify	verification	verify
verification/resend	laravel2step::resend	verification	resend
_debugbar/open	debugbar.openhandler	_debugbar	handle
_debugbar/clockwork/{id}	debugbar.clockwork	_debugbar	clockwork
_debugbar/assets/stylesheets	debugbar.assets.css	_debugbar	css
_debugbar/assets/javascript	debugbar.assets.js	_debugbar	js
_debugbar/cache/{key}/{tags?}	debugbar.cache.delete	_debugbar	delete
{locale}/strona	binshopsblog.index	/{locale}/strona	index
{locale}/strona/search	binshopsblog.search	/{locale}/strona	search
{locale}/strona/category{subcategories}	binshopsblog.view_category	/{locale}/strona	view_category
{locale}/strona/{blogPostSlug}	binshopsblog.single	/{locale}/strona	viewSinglePost
{locale}/strona/save_comment/{blogPostSlug}	binshopsblog.comments.add_new_comment	/{locale}/strona	addNewComment
blog_admin/setup	binshopsblog.admin.setup	/blog_admin	setup
blog_admin/setup-submit	binshopsblog.admin.setup_submit	/blog_admin	setup_submit
blog_admin	binshopsblog.admin.index	/blog_admin	index
blog_admin/add_post	binshopsblog.admin.create_post	/blog_admin	create_post
blog_admin/add_post	binshopsblog.admin.store_post	/blog_admin	store_post
blog_admin/add_post_toggle	binshopsblog.admin.store_post_toggle	/blog_admin	store_post_toggle
blog_admin/edit_post/{blogPostId}	binshopsblog.admin.edit_post	/blog_admin	edit_post
blog_admin/edit_post_toggle/{blogPostId}	binshopsblog.admin.edit_post_toggle	/blog_admin	edit_post_toggle
blog_admin/edit_post/{blogPostId}	binshopsblog.admin.update_post	/blog_admin	update_post
blog_admin/remove_photo/{slug}/{lang_id}	binshopsblog.admin.remove_photo	/blog_admin	remove_photo
blog_admin/image_uploads	binshopsblog.admin.images.all	blog_admin/image_uploads	index
blog_admin/image_uploads/upload	binshopsblog.admin.images.upload	blog_admin/image_uploads	create
blog_admin/image_uploads/upload	binshopsblog.admin.images.store	blog_admin/image_uploads	store
blog_admin/delete_post/{blogPostId}	binshopsblog.admin.destroy_post	/blog_admin	destroy_post
blog_admin/comments	binshopsblog.admin.comments.index	blog_admin/comments	index
blog_admin/comments/{commentId}	binshopsblog.admin.comments.approve	blog_admin/comments	approve
blog_admin/comments/{commentId}	binshopsblog.admin.comments.delete	blog_admin/comments	destroy
blog_admin/categories	binshopsblog.admin.categories.index	blog_admin/categories	index
blog_admin/categories/add_category	binshopsblog.admin.categories.create_category	blog_admin/categories	create_category
blog_admin/categories/store_category	binshopsblog.admin.categories.store_category	blog_admin/categories	store_category
blog_admin/categories/edit_category/{categoryId}	binshopsblog.admin.categories.edit_category	blog_admin/categories	edit_category
blog_admin/categories/edit_category/{categoryId}	binshopsblog.admin.categories.update_category	blog_admin/categories	update_category
blog_admin/categories/delete_category/{categoryId}	binshopsblog.admin.categories.destroy_category	blog_admin/categories	destroy_category
blog_admin/languages	binshopsblog.admin.languages.index	blog_admin/languages	index
blog_admin/languages/add_language	binshopsblog.admin.languages.create_language	blog_admin/languages	create_language
blog_admin/languages/add_language	binshopsblog.admin.languages.store_language	blog_admin/languages	store_language
blog_admin/languages/delete_language/{languageId}	binshopsblog.admin.languages.destroy_language	blog_admin/languages	destroy_language
blog_admin/languages/toggle_language/{languageId}	binshopsblog.admin.languages.toggle_language	blog_admin/languages	toggle_language
roles	laravelroles::roles.index		index
roles/create	laravelroles::roles.create		create
roles	laravelroles::roles.store		store
roles/{role}	laravelroles::roles.show		show
roles/{role}/edit	laravelroles::roles.edit		edit
roles/{role}	laravelroles::roles.update		update
roles/{role}	laravelroles::roles.destroy		destroy
permissions	laravelroles::permissions.index		index
permissions/create	laravelroles::permissions.create		create
permissions	laravelroles::permissions.store		store
permissions/{permission}	laravelroles::permissions.show		show
permissions/{permission}/edit	laravelroles::permissions.edit		edit
permissions/{permission}	laravelroles::permissions.update		update
permissions/{permission}	laravelroles::permissions.destroy		destroy
roles-deleted	laravelroles::roles-deleted		index
role-deleted/{id}	laravelroles::role-show-deleted		show
role-restore/{id}	laravelroles::role-restore		restoreRole
roles-deleted-restore-all	laravelroles::roles-deleted-restore-all		restoreAllDeletedRoles
roles-deleted-destroy-all	laravelroles::destroy-all-deleted-roles		destroyAllDeletedRoles
role-destroy/{id}	laravelroles::role-item-destroy		destroy
permissions-deleted	laravelroles::permissions-deleted		index
permission-deleted/{id}	laravelroles::permission-show-deleted		show
permission-restore/{id}	laravelroles::permission-restore		restorePermission
permissions-deleted-restore-all	laravelroles::permissions-deleted-restore-all		restoreAllDeletedPermissions
permissions-deleted-destroy-all	laravelroles::destroy-all-deleted-permissions		destroyAllDeletedPermissions
permission-destroy/{id}	laravelroles::permission-item-destroy		destroy
/	home		index
terms	terms		terms
login	login		showLoginForm
login			login
logout	logout		logout
register	register		showRegistrationForm
register			register
password/reset	password.request		showLinkRequestForm
password/email	password.email		sendResetLinkEmail
password/reset/{token}	password.reset		showResetForm
password/reset	password.update		reset
password/confirm	password.confirm		showConfirmForm
password/confirm			confirm
activate	activate		initial
activate/{token}	authenticated.activate		activate
activation	authenticated.activation-resend		resend
exceeded	exceeded		exceeded
social/redirect/{provider}	social.redirect		getSocialRedirect
social/handle/{provider}	social.handle		getSocialHandle
re-activate/{token}	user.reactivate		userReActivate
panel	dashboard		index
posts	posts.index	/	index
posts/create	posts.create	/	create
posts	posts.store	/	store
posts/{post}	posts.show	/	show
posts/{post}/edit	posts.edit	/	edit
posts/{post}	posts.update	/	update
posts/{post}	posts.destroy	/	destroy
categories	categories.index	/	index
categories/create	categories.create	/	create
categories	categories.store	/	store
categories/{category}	categories.show	/	show
categories/{category}/edit	categories.edit	/	edit
categories/{category}	categories.update	/	update
categories/{category}	categories.destroy	/	destroy
activation-required	activation-required		activationRequired
logout	logout		logout
home	home		index
profile/{username}	{username}		show
profile/create	profile.create		create
profile/{profile}	profile.show		show
profile/{profile}/edit	profile.edit		edit
profile/{profile}	profile.update		update
profile/{username}/updateUserAccount	{username}		updateUserAccount
profile/{username}/updateUserPassword	{username}		updateUserPassword
profile/{username}/deleteUserAccount	{username}		deleteUserAccount
images/profile/{id}/avatar/{image}			userProfileAvatar
avatar/upload	avatar.upload		upload
users/deleted	deleted.index	/users	index
users/deleted/{deleted}	deleted.show	/users	show
users/deleted/{deleted}	deleted.update	/users	update
users/deleted/{deleted}	deleted.destroy	/users	destroy
users	users		index
users/create	users.create		create
users	users.store		store
users/{user}	users.show		show
users/{user}/edit	users.edit		edit
users/{user}	users.update		update
users/{user}	user.destroy		destroy
search-users	search-users		search
themes	themes		index
themes/create	themes.create		create
themes	themes.store		store
themes/{theme}	themes.show		show
themes/{theme}/edit	themes.edit		edit
themes/{theme}	themes.update		update
themes/{theme}	themes.destroy		destroy
logs			index
routes			listRoutes
active-users			activeUsers
viewpost/{id}	viewpost		show
php			\Illuminate\Routing\RedirectController


### Seeds
##### Seeded Roles
  * Unverified - Level 0
  * User  - Level 1
  * Administrator - Level 5

##### Seeded Permissions
  * view.users
  * create.users
  * edit.users
  * delete.users

##### Seeded Users

|Email|Password|Access|
|:------------|:------------|:------------|
|user@user.com|password|User Access|
|admin@admin.com|password|Admin Access|

#-----------------------------------------------------------------
#INSTALL

You need commit this code

$ git commit (link to this repositores)

You need instal required composer

$ composer install

You need install node

$ npm install

You need restart your computer and add your npm to path

You need create database and make migrate

$ php artisan migrate

You need to modification php.init in your xampp server ;extension=gd to extension=gd

$ You need import database to your phpmyadmin

And start server 127.0.0.1:8000

$ php artisan serve

----------------------------------------------------------------
