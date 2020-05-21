locals {
  app1 = {
    green = {
      app1_node_size         = "foo"
      app1_nodepool_count     = "1"
      app1_nodepool_min_size    = "4"
      app1_location = "bar"
    }

    blue = {
      app1_node_size         = "bar"
      app1_nodepool_count     = "1"
      app1_nodepool_min_size    = "4"
      app1_location = "foo"
    }
}
