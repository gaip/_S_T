function string_cut(input, chars)
{
    return aqString.GetLength(input) <= chars ? input :
        aqString.SubString(input, 0, chars) + "...";
}