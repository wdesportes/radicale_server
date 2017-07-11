ALTER TABLE header
  ADD CONSTRAINT header_ibfk_1 FOREIGN KEY (collection_path) REFERENCES collection (path);

ALTER TABLE item
  ADD CONSTRAINT item_ibfk_1 FOREIGN KEY (collection_path) REFERENCES collection (path);

ALTER TABLE line
  ADD CONSTRAINT line_ibfk_1 FOREIGN KEY (item_name) REFERENCES item (name);

ALTER TABLE property
  ADD CONSTRAINT property_ibfk_1 FOREIGN KEY (collection_path) REFERENCES collection (path);
