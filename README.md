slowass-js
==========

Local Sinatra app to test slow external JS (like ads), to ensure that your pages still load smoothly.

Getting Started
---------------

1. `bundle` to install dependencies
2. `bundle exec rackup -p 4567` to start the server
3. Add `<script src="http://localhost:4567/document.write">` to your page to simulate ad code which uses `document.write`.

Configuring
-----------

This uses environment variables to configure behavior. Start the server like so: `KEY=value bundle exec rackup` to configure.

* `DELAY`: Seconds to wait before serving the "ad code". Default to 5.

TODO
----

* Add jQuery endpoint which asynchronously inserts DOM elements.
* Allow greater configurability.
* Ensure that this can be mounted in another Rack-compatible app.
