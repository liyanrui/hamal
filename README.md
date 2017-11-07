# Hamal

Hamal is a tool for converting points, vector field and mesh to POV-Ray scene file.

The following example can show the basic usage of hamal:

```
$ rbox 10 > points.asc
$ qhull i < points TO hull.asc
$ sed -i '1, 2d' points.asc
$ sed -i '1d' hull.asc
$ python3 hamal --object=hull --mesh=hull.asc points.asc
$ povray +P hull.pov
```

Then using your image viewer to view the hull.png.

More details:

```
$ python3 hamal -h
```
