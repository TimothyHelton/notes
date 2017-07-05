# Data Science

### <a name="toc"></a>Table of Contents

[Graph Components](#graph_components)

[Graph Databases](#graph_databases)

[Labeled Property Graph Model](#labeled_prop_graph)


### <a name="graph_components"></a> Graph Components
| Official Name | Other Names |
| ------------- | ----------- |
| vertices | nodes |
| edges | relationships |

- Graph Databases
    - CRUDf
        - Create
        - Read
        - Update
        - Delete
    - Underlying Storage
        - **Native Graph Storage**
            - Purpose-built stack engineered for performance and scalability.
        - **Nonnative Graph Storage**
            - Depends on mature nongraph backend (ie MySQL, PostgreSQL, ...)
            whose production characteristics are well understood
        - **Native Graph Processing**
            - benefits traversal performance at the expense of making some
            queries that don't use traversals difficult or memory intensive
    - Relationships are first-class citizens

[Table of Contents](#toc)


### <a name="graph_databases"></a> Graph Databases
- Graph database performance tends to remain relatively constant, even as
the dataset grows.
    - This is due to the fact that the queries are localized to a portion of 
    the graph.
    - The execution time for each query is proportional only to the size of 
    the part of the graph traversed to satisfy that query, rather than the 
    complete graph.
- Graphs are additive.
    - The graph domain does not have to be defined in exhaustive detail ahead
     of time.
    - Schemas are not required.

### <a name="labeled_prop_graph"></a> Labeled Property Graph Model
- contains nodes and relationships
- nodes contain properties
    - key-value pairs
- nodes may be labeled with one or more labels
- relationships are named and directed
    - always have a start and end node
- relationships may also contain properties

[Table of Contents](#toc)
