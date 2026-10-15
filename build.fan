#! /usr/bin/env fan

// Copyright (C) 2026, Alliance for Energy Innovation, LLC
// All Rights Reserved

using build

**
** Build: psychrometricsExt
**

class Build : BuildPod
{
  new make()
  {
    podName = "psychrometricsExt"
    summary = "Psychrometric Axon functions"
    version = Version("2.0.0")
    meta    = [
                "ext.name":        "psychrometrics",
                "ext.icon":        "ruler",
                "org.name":        "NLR",
                "org.uri":         "http://www.nlr.gov/",
                "proj.name":       "NLR Psychrometrics Extension",
                "proj.uri":        "https://github.com/NatLabRockies/psychrometricsExt",
                "license.name":    "BSD-3",
                "skyspark.docExt": "true",
                ]
    resDirs = [`locale/`, `lib/`]
    index   = [
                "skyarc.ext": "psychrometricsExt",
              ]
  }

  // To publish to StackHub, use: bin/fan /path/to/build.fan publish 
  // For more information, see: https://skyfoundry.com/doc/stackhub/index#publishing
  
  @Target { help = "Publish to stackhub.org " }
  Void publish() { stackhub::PublishTask(this).run }

}