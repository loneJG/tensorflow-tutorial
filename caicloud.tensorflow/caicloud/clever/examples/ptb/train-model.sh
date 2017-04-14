#!/bin/bash
#
# Copyright 2017 Caicloud authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ==============================================================================

rm -rf /tmp/ptb_saved_model
rm -rf /tmp/ptb

python ptb_caicloud_taas.py \
       --max_steps=10000 \
       --save_checkpoints_secs=3 \
       --save_summaries_secs=3 \
       --logdir=/tmp/ptb \
       --data_path=./simple-examples/data \
       --save_path=/tmp/ptb_saved_model
