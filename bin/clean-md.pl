while (<>) {
    s|<tt>|`|g;
    s|</tt>|`|g;
    s|<i>|*|;
    s|</i>|*|;
    s|<b>|**|;
    s|</b>|**|;
    s|<em>|*|;
    s|</em>|*|;
    print;
}
