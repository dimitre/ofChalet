#!/bin/bash

cd chalet_external/cairo
$builddir = BUILD
mkdir BUILD
  meson setup $builddir
  ninja -C $builddir
  ninja -C $builddir install
