Create table Users
(
	UserID int IDENTITY ,
	UserAccount varchar(16),primary key,
	UserName varchar(32),
	UserPassword varchar(16),
	UserImage Image,
	UserIntroduction text,
	UserPreference_A tinyint,
	UserPreference_B tinyint,
	UserPreference_C tinyint
);
go

Create table Movies
(
	MovieID int IDENTITY primary key,
	MovieType bit not null default 0, --0 for movies, 1 for short movies
	MovieTitle varchar(256) not null,
	MovieIntroduction text,
	MovieImage Image,
	MoviePoint tinyint check(MoviePoint<=10 and MoviePoint>=0),
	MovieTag varchar(32),
	MovieLink varchar(64),
	MovieComponent_A tinyint,
	MovieComponent_B tinyint,
	MovieComponent_C tinyint
);
Create index MovieTitle on Movies(MovieTitle);
go

Create table MLists
(
	MListID int IDENTITY primary key,
	MListTheme varchar(32),
	MListIntroduction text,
	MListPoint tinyint check(MListPoint<=10 and MListPoint>=0),
	MListLikes int ,
	MListShares int,
	Movies_ID int foreign key references Movies(MovieID) on update cascade
);
go

Create table MoviePointTags
(
	Movies_ID int foreign key references Movies(MovieID) on update cascade,
	Users_ID int foreign key references Users(UserID) on update cascade,
	MoviePointTagID int IDENTITY primary key,
	Point tinyint check(Point<=10 and Point>=0),
	Tag varchar(32)
);
go

Create table CommentsReviews
(
	Movies_ID int foreign key references Movies(MovieID) on update cascade,
	Users_ID int foreign key references Users(UserID) on update cascade,
	CommentsReviewsID int IDENTITY primary key,
	Comment varchar(512),
	CommentLikes int,
	Review text,
	ReviewLikes int,
);
go

Create table MovieCollection
(
	Movies_ID int foreign key references Movies(MovieID) on update cascade,
	Users_ID int foreign key references Users(UserID) on update cascade,
	MovieCollectionID int IDENTITY primary key,
);
go

Create table MListComments
(
	Movies_ID int foreign key references Movies(MovieID) on update cascade,
	Users_ID int foreign key references Users(UserID) on update cascade,
	Point tinyint check(Point<=10 and Point>=0),
	Comment varchar(512)
);
go
	

