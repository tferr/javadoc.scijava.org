Check primary URLs:

  $ curl -Is https://javadoc.scijava.org/MiToBo/index.html | head -n1
  HTTP/1.1 200 OK

Check that trailing slashes are added appropriately:

  $ curl -Is https://javadoc.scijava.org/MiToBo | grep '^\(HTTP/\|Location:\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://javadoc.scijava.org/MiToBo/
