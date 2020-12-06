#!/usr/bin/env fish
# no idea if this works yet
function fromhex
    set hex {1#"#"}
    set r (printf '0x%0.2s' $hex)
    set g (printf '0x%0.2s' $hex#??)
    set b (printf '0x%0.2s' $hex#????)
    printf '%03d' "((
  ($r<75?0:($r-35)/40)*6*6 + ($g<75?0:($g-35)/40)*6 + ($b<75?0:($b-35)/40) + 16
))"
end
