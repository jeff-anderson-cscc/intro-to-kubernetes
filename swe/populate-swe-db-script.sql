DROP TABLE if exists public.author;

CREATE TABLE public.author (
	id int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY,
	email_address varchar(255) NOT NULL,
	first_name varchar(80) NOT NULL,
	last_name varchar(80) NOT NULL,
	CONSTRAINT author_pkey PRIMARY KEY (id)
);

DROP TABLE if exists public.blog_post;

CREATE TABLE public.blog_post (
	id int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY,
	category varchar(200) NOT NULL,
	"content" varchar(500000) NOT NULL,
	date_posted timestamp NULL,
	title varchar(200) NOT NULL,
	author_id int8 NOT NULL,
	CONSTRAINT blog_post_pkey PRIMARY KEY (id)
);

ALTER TABLE public.blog_post ADD CONSTRAINT fkr9jb17wqqs4slx1m817x1u49n FOREIGN KEY (author_id) REFERENCES public.author(id);

INSERT INTO public.AUTHOR (first_name, last_name, EMAIL_ADDRESS) VALUES
  ('Ned', 'Flanders', 'ned.flanders@springwebessentials.com'),
  ('Homer', 'Simpson', 'homer.simpson@springwebessentials.com');

INSERT INTO public.BLOG_POST (category, content, date_posted, title, author_id) VALUES
  ('Healthy and Delicious', 'Bacon ipsum dolor amet cow turducken ball tip fatback filet mignon. T-bone bresaola capicola andouille beef ribs. Hambur
ger doner meatball spare ribs tail picanha. Meatloaf chicken ribeye sausage short ribs bacon tail. Porchetta fatback pork belly corned beef meatloaf.
 Pig boudin frankfurter strip steak turkey biltong drumstick. Tongue hamburger kielbasa, venison frankfurter short loin meatball ribeye tri-tip ham j
owl jerky.', now(), 'Chicken Gyro with Beer Cheese Soup', 1 ),
 ('Delicious Desserts', 'Bacon ipsum dolor amet chislic tenderloin ground round, meatball ham hock fatback cupim beef ribs kevin pig ball tip filet
mignon leberkas picanha pork chop. Alcatra swine short ribs, burgdoggen capicola prosciutto tenderloin brisket porchetta kielbasa cow spare ribs cupi
m. Rump leberkas ground round tongue short loin ham hock venison shoulder pig meatball chuck pork loin picanha doner. Flank tongue shank, strip steak
 ribeye pork cow bacon tail. Frankfurter hamburger bresaola andouille t-bone buffalo pancetta cow chuck pork pastrami tail prosciutto. Filet mignon l
andjaeger flank frankfurter bacon.', now(), 'Gooey Chocolate Crumble with Espresso', 2 );
