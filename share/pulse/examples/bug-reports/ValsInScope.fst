(*
   Copyright REDACTED

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*)

module ValsInScope
open Pulse.Lib.Pervasives

assume
val some_stt_val ()
    : stt unit emp (fun _ -> emp)


```pulse
fn use_some_stt_val ()
   requires emp
   ensures emp
{
    some_stt_val()
}
```

