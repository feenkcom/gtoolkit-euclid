# GToolkit-Euclid ![](https://github.com/feenkcom/gtoolkit-euclid/workflows/Cargo%20Build/badge.svg)

GToolkit bindings to [euclid](https://github.com/servo/euclid) - a small library for geometric types with a focus on 2d graphics and layout

## Installation

```smalltalk 
EpMonitor current disable.
[ 
  Metacello new
    baseline: 'GToolkitEuclid';
    repository: 'github://feenkcom/gtoolkit-euclid';
    load
] ensure: [ EpMonitor current enable ].
```
