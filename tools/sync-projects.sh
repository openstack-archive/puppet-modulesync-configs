# Copyright 2015 Red Hat, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may
# not use this file except in compliance with the License. You may obtain
# a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations
# under the License.

PROJECT=$1

if [ -z $GEM_HOME ]; then
    echo "Warning! \$GEM_HOME is not set"
    echo ""
    echo "In order to properly use this script, please run the"
    echo "following:"
    echo ""
    echo "  $ export GEM_HOME=\`pwd\`/.bundled_gems"
    exit 1
fi

BUNDLE=${GEM_HOME}/bin/bundle

if ! [ -f ${BUNDLE} ]; then
    echo "Warning! bundler is not installed"
    echo ""
    echo "Please run the following to install bundler:"
    echo "  $ gem install bundler"
    exit 1
fi

${GEM_HOME}/bin/msync update --project-root=`pwd` --filter $PROJECT --offline
