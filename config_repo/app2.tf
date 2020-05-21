locals {
  app2 = {
    green = {
      app2_node_size         = "foo"
      app2_nodepool_count     = "1"
      app2_nodepool_min_size    = "4"
      app2_location = "bar"
    }

    blue = {
      app2_node_size         = "bar"
      app2_nodepool_count     = "1"
      app2_nodepool_min_size    = "4"
      app2_location = "foo"
    }
}
