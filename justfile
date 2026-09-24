# Copyright The Total RP 3 Authors
# SPDX-License-Identifier: Apache-2.0

packager_url := "https://raw.githubusercontent.com/BigWigsMods/packager/eca4e176cd6ae5404c66bef5c11c08200a458400/release.sh"

all: package

package:
    curl -s {{ packager_url }} | bash -s -- -d
