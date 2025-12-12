#!/bin/bash
set -e

echo "Java binary location:"
which java || true

echo "Java version:"
java -version || true

echo "JAVA_HOME:"
echo $JAVA_HOME
