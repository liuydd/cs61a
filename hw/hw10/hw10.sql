CREATE TABLE parents AS
  SELECT "abraham" AS parent, "barack" AS child UNION
  SELECT "abraham"          , "clinton"         UNION
  SELECT "delano"           , "herbert"         UNION
  SELECT "fillmore"         , "abraham"         UNION
  SELECT "fillmore"         , "delano"          UNION
  SELECT "fillmore"         , "grover"          UNION
  SELECT "eisenhower"       , "fillmore";

CREATE TABLE dogs AS
  SELECT "abraham" AS name, "long" AS fur, 26 AS height UNION
  SELECT "barack"         , "short"      , 52           UNION
  SELECT "clinton"        , "long"       , 47           UNION
  SELECT "delano"         , "long"       , 46           UNION
  SELECT "eisenhower"     , "short"      , 35           UNION
  SELECT "fillmore"       , "curly"      , 32           UNION
  SELECT "grover"         , "short"      , 28           UNION
  SELECT "herbert"        , "curly"      , 31;

CREATE TABLE sizes AS
  SELECT "toy" AS size, 24 AS min, 28 AS max UNION
  SELECT "mini"       , 28       , 35        UNION
  SELECT "medium"     , 35       , 45        UNION
  SELECT "standard"   , 45       , 60;


-- The size of each dog
CREATE TABLE size_of_dogs AS
  SELECT d.name, s.size from dogs as d, sizes as s where d.height<=s.max and d.height>s.min;


-- All dogs with parents ordered by decreasing height of their parent
CREATE TABLE by_parent_height AS
  SELECT p1.child as d1, p2.child as d2, s1.size as d1s, s2.size as d2s
  from parents as p1, parents as p2, size_of_dogs as s1, size_of_dogs as s2 
  where p1.parent=p2.parent and p1.child<p2.child and p1.child=s1.name and p2.child=s2.name;


-- Filling out this helper table is optional
CREATE TABLE siblings AS
  SELECT p1.child as d1, p2.child as d2, s1.size as d1s, s2.size as d2s
  from parents as p1, parents as p2, size_of_dogs as s1, size_of_dogs as s2 
  where p1.parent=p2.parent and p1.child<p2.child and p1.child=s1.name and p2.child=s2.name;

-- Sentences about siblings that are the same size
CREATE TABLE sentences AS
  SELECT "REPLACE THIS LINE WITH YOUR SOLUTION";

