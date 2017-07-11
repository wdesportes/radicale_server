CREATE TABLE collection (
  path varchar(200) NOT NULL,
  parent_path varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE header (
  name varchar(200) NOT NULL,
  value text NOT NULL,
  collection_path varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE item (
  name varchar(200) NOT NULL,
  tag text NOT NULL,
  collection_path varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE line (
  name text NOT NULL,
  value text NOT NULL,
  item_name varchar(200) DEFAULT NULL,
  timestamp bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE property (
  name varchar(200) NOT NULL,
  value text NOT NULL,
  collection_path varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE collection
  ADD PRIMARY KEY (path);

ALTER TABLE header
  ADD PRIMARY KEY (name,collection_path),
  ADD KEY collection_path (collection_path);

ALTER TABLE item
  ADD PRIMARY KEY (name),
  ADD KEY collection_path (collection_path);

ALTER TABLE line
  ADD PRIMARY KEY (timestamp),
  ADD KEY item_name (item_name);

ALTER TABLE property
  ADD PRIMARY KEY (name,collection_path),
  ADD KEY collection_path (collection_path);
