import "bootstrap";

import { setup } from '../play';
import { carrouselFct } from '../carrousel';
import { friendsEditToggle } from '../friends';
import { sortingOut } from '../sort_out_buttons';

sortingOut();
setup();
carrouselFct();
friendsEditToggle();
