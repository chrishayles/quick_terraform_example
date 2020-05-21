locals {
  globals = {
    green = {
      hostname = "foobar.com"
      storage_account = "abcdefghijklmn"
    }

    blue = {
      hostname = "sub.foobar.com"
      storage_account = "abcdefghijklmn"
    }
  }

  environments = "${merge(local.globals[var.workspace], local.app1[var.workspace], local.app2[var.workspace])}"
}
