============
pitchfork.io
============

pitchfork.io is an API first server scanning service. It uses remote passive
monitoring to monitor and report on the services and versions that your
servers are running and will send alerts if services are down or are
vulnerable to security flaws.

pitchfork.io is under active development and is in private beta.

Please send any queries to pitchfork@pitchfork.io.

-------
sign up
-------

.. code::

    $ pitchfork account register --email=your_email_address@example.org

-----
usage
-----

Add a server address::

    $ pitchfork address add --address=198.51.100.100

Port probe the address::

    $ pitchfork address portprobe --address=198.51.100.100

Generate a report for the address::

    $ pitchfork address report --address=198.51.100.100
