psychrometricsExt
=================

**psychrometricsExt** is a [SkySpark] extension that provides a set of of [psychrometric] functions.
The functions were originally ported to SkySpark by [Stephen Frank] from Excel VBA macros
written by [Eric Kozubal].

[SkySpark]: http://skyfoundry.com/skyspark/ "SkySpark"
[psychrometric]: http://en.wikipedia.org/wiki/Psychrometrics "Psychrometrics"
[Stephen Frank]: https://orcid.org/0000-0003-4366-6163 "Stephen Frank"
[Eric Kozubal]: https://research-hub.nlr.gov/en/persons/eric-kozubal/ "Eric Kozubal"

Build
-----

Build instructions:

1. Create a local clone of this repository on a computer with a working copy of SkySpark.
2. From the command line, change directory to the SkySpark root directory.
3. Execute `bin/fan /path/to/psychrometricsExt/build.fan`.
   - On Linux, you may need to `chmod +x bin/fan` first.
   - Output pod will be `lib/fan/psychrometricsExt.pod` (relative to SkySpark root).
4. Execute `bin/fan docgen` to regenerate documentation.

Build instructions are the same for Windows except paths use backslashes `\` and `fan` becomes
`fan.bat`.

Note that all dependencies need to be in `lib/fan` (relative to SkySpark root); at the time of
this writing the build script will not find pods located in `var/lib/fan`.
   

Installation
------------

Select a set of installation instructions below that corresponds to how you obtained the
**psychrometricsExt** extension. Following installation, you must enable the *psychrometrics*
extension in the *Exts* tab of the SkySpark *Settings* app within each project that needs
access to the functions.

### From Source ###

If you built from source, all that is needed to install the extension is to start (or restart)
SkySpark.

### From GitHub ###

1. Download a `psychrometricsExt.pod` release from GitHub.
2. Copy `psychrometricsExt.pod` into the `lib/fan/` directory of your SkySpark installation.
3. Set ownership permissions correctly on the pod to match the other pods in your SkySpark
   installation (Linux/Mac).
4. From the command line, change directory to the SkySpark root directory.
5. Execute `bin/fan docgen` to regenerate documentation.
   - Optional; the functions will work without this step but the *Doc* app won't show any
     function documentation.
   - On Linux, you may need to `chmod +x bin/fan` first.
6. Start (or restart) SkySpark.

### From StackHub ###

**psychrometricsExt** is also available [from StackHub]. SkySpark supports direct
installation via Stackhub:

1. Open the *Host* app.
2. Navigate to the *Install* tab.
3. Click the *Install* button and search for "psychrometricsExt".
4. Select the extension when it appears, click *Next*, select the desired
   version, and complete the installation.

[from StackHub]: https://stackhub.org/package/psychrometricsExt "StackHub"

Documentation
-------------

Function documentation is available in the SkySpark *Doc* app under *psychrometrics* or
within the *Docs* interface in the *Code* app.

License
-------

This software is licensed for use under the terms of the Berkeley Software Distribution 3-clause (BSD-3) license; see `LICENSE.md`.