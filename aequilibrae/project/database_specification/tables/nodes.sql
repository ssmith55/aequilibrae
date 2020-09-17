CREATE TABLE 'nodes' (ogc_fid     INTEGER PRIMARY KEY,
                      node_id     INTEGER UNIQUE NOT NULL,
                      is_centroid INTEGER        NOT NULL DEFAULT 0,
                      modes       TEXT,
                      link_types  TEXT);

#
SELECT AddGeometryColumn( 'nodes', 'geometry', 4326, 'POINT', 'XY', 1);

#
INSERT INTO 'attributes_documentation' (name_table, attribute, description) VALUES('nodes','node_id', 'Unique node ID');
#
INSERT INTO 'attributes_documentation' (name_table, attribute, description) VALUES('nodes','is_centroid', 'Flag identifying centroids');
#
INSERT INTO 'attributes_documentation' (name_table, attribute, description) VALUES('nodes','modes', 'Modes connected to the node');
#
INSERT INTO 'attributes_documentation' (name_table, attribute, description) VALUES('nodes','link_types', 'Link types connected to the node');
