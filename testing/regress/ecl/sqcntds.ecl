/*##############################################################################

    HPCC SYSTEMS software Copyright (C) 2012 HPCC Systems.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
############################################################################## */

#onwarning(1036, ignore);

//version multiPart=false

import ^ as root;
multiPart := #IFDEFINED(root.multiPart, false);

//--- end of version configuration ---

import $.setup;
sq := setup.sq(multiPart);

output(count(sq.HouseDs));
output(count(sq.HouseDs)=5);
output(count(choosen(sq.HouseDs, 10)));
output(count(choosen(sq.HouseDs, 10))=5);
output(count(choosen(sq.HouseDs, 4)));
output(count(choosen(sq.HouseDs, 4))=4);
output(count(choosen(sq.HouseDs, 0)));
output(count(choosen(sq.HouseDs, 0))=0);

output(count(sq.HouseDs(postCode != 'WC1')));
output(count(sq.HouseDs(postCode != 'WC1'))=4);
output(count(choosen(sq.HouseDs(postCode != 'WC1'), 10)));
output(count(choosen(sq.HouseDs(postCode != 'WC1'), 10))=4);
output(count(choosen(sq.HouseDs(postCode != 'WC1'), 3)));
output(count(choosen(sq.HouseDs(postCode != 'WC1'), 3))=3);
output(count(choosen(sq.HouseDs(postCode != 'WC1'), 0)));
output(count(choosen(sq.HouseDs(postCode != 'WC1'), 0))=0);
