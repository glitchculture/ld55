local font_data = {
    minfilter = "linear",
    magfilter = "linear",
    is_premult = true,
    {
        is_font = true,
        size = 32,
        mono = false,
        filename = "ReggaeOne.ttf",
        face = 0,
        chars = (function()
            local chrs = {}
            (function()
                chrs[32] = {
                    x1 = -1, y1 = 0, x2 = 1, y2 = 2,
                    s1 = 0.98046875, t1 = 0.33984375, s2 = 0.98828125, t2 = 0.34765625,
                    advance = 11,
                }
                chrs[33] = {
                    x1 = 2, y1 = -1, x2 = 12, y2 = 28,
                    s1 = 0.9375, t1 = 0.7734375, s2 = 0.9765625, t2 = 0.88671875,
                    advance = 13,
                }
                chrs[34] = {
                    x1 = 0, y1 = 15, x2 = 16, y2 = 27,
                    s1 = 0, t1 = 0.2265625, s2 = 0.0625, t2 = 0.2734375,
                    advance = 16,
                }
                chrs[35] = {
                    x1 = 0, y1 = 0, x2 = 23, y2 = 27,
                    s1 = 0.8828125, t1 = 0.55859375, s2 = 0.97265625, t2 = 0.6640625,
                    advance = 23,
                }
                chrs[36] = {
                    x1 = -1, y1 = -5, x2 = 21, y2 = 29,
                    s1 = 0.09375, t1 = 0.8671875, s2 = 0.1796875, t2 = 1,
                    advance = 22,
                }
                chrs[37] = {
                    x1 = 1, y1 = -2, x2 = 31, y2 = 28,
                    s1 = 0.58984375, t1 = 0.8828125, s2 = 0.70703125, t2 = 1,
                    advance = 32,
                }
                chrs[38] = {
                    x1 = 0, y1 = 0, x2 = 26, y2 = 27,
                    s1 = 0.1875, t1 = 0.65234375, s2 = 0.2890625, t2 = 0.7578125,
                    advance = 24,
                }
                chrs[39] = {
                    x1 = 1, y1 = 15, x2 = 10, y2 = 27,
                    s1 = 0.5, t1 = 0.234375, s2 = 0.53515625, t2 = 0.28125,
                    advance = 11,
                }
                chrs[40] = {
                    x1 = 1, y1 = -6, x2 = 13, y2 = 29,
                    s1 = 0, t1 = 0.86328125, s2 = 0.046875, t2 = 1,
                    advance = 13,
                }
                chrs[41] = {
                    x1 = 0, y1 = -6, x2 = 12, y2 = 29,
                    s1 = 0.046875, t1 = 0.86328125, s2 = 0.09375, t2 = 1,
                    advance = 13,
                }
                chrs[42] = {
                    x1 = 0, y1 = 12, x2 = 16, y2 = 27,
                    s1 = 0.08203125, t1 = 0.21875, s2 = 0.14453125, t2 = 0.27734375,
                    advance = 16,
                }
                chrs[43] = {
                    x1 = 0, y1 = 0, x2 = 23, y2 = 20,
                    s1 = 0.4453125, t1 = 0.28125, s2 = 0.53515625, t2 = 0.359375,
                    advance = 23,
                }
                chrs[44] = {
                    x1 = 1, y1 = -5, x2 = 11, y2 = 9,
                    s1 = 0.14453125, t1 = 0.22265625, s2 = 0.18359375, t2 = 0.27734375,
                    advance = 11,
                }
                chrs[45] = {
                    x1 = 1, y1 = 5, x2 = 17, y2 = 14,
                    s1 = 0.3125, t1 = 0.23828125, s2 = 0.375, t2 = 0.2734375,
                    advance = 16,
                }
                chrs[46] = {
                    x1 = 0, y1 = -1, x2 = 11, y2 = 8,
                    s1 = 0.375, t1 = 0.23828125, s2 = 0.41796875, t2 = 0.2734375,
                    advance = 11,
                }
                chrs[47] = {
                    x1 = -1, y1 = -2, x2 = 15, y2 = 28,
                    s1 = 0.70703125, t1 = 0.8828125, s2 = 0.76953125, t2 = 1,
                    advance = 13,
                }
                chrs[48] = {
                    x1 = 0, y1 = 0, x2 = 21, y2 = 27,
                    s1 = 0.5078125, t1 = 0.44921875, s2 = 0.58984375, t2 = 0.5546875,
                    advance = 22,
                }
                chrs[49] = {
                    x1 = 2, y1 = 0, x2 = 16, y2 = 28,
                    s1 = 0.609375, t1 = 0.66015625, s2 = 0.6640625, t2 = 0.76953125,
                    advance = 22,
                }
                chrs[50] = {
                    x1 = 0, y1 = 0, x2 = 21, y2 = 27,
                    s1 = 0.42578125, t1 = 0.44921875, s2 = 0.5078125, t2 = 0.5546875,
                    advance = 22,
                }
                chrs[51] = {
                    x1 = 0, y1 = 0, x2 = 22, y2 = 27,
                    s1 = 0, t1 = 0.546875, s2 = 0.0859375, t2 = 0.65234375,
                    advance = 22,
                }
                chrs[52] = {
                    x1 = -1, y1 = 0, x2 = 22, y2 = 28,
                    s1 = 0.28125, t1 = 0.7578125, s2 = 0.37109375, t2 = 0.8671875,
                    advance = 22,
                }
                chrs[53] = {
                    x1 = 1, y1 = 0, x2 = 20, y2 = 27,
                    s1 = 0.6640625, t1 = 0.34765625, s2 = 0.73828125, t2 = 0.453125,
                    advance = 22,
                }
                chrs[54] = {
                    x1 = 0, y1 = 0, x2 = 21, y2 = 29,
                    s1 = 0.85546875, t1 = 0.7734375, s2 = 0.9375, t2 = 0.88671875,
                    advance = 22,
                }
                chrs[55] = {
                    x1 = 1, y1 = 0, x2 = 22, y2 = 27,
                    s1 = 0.34375, t1 = 0.44921875, s2 = 0.42578125, t2 = 0.5546875,
                    advance = 22,
                }
                chrs[56] = {
                    x1 = 0, y1 = 0, x2 = 21, y2 = 27,
                    s1 = 0.90234375, t1 = 0.453125, s2 = 0.984375, t2 = 0.55859375,
                    advance = 22,
                }
                chrs[57] = {
                    x1 = 0, y1 = -1, x2 = 21, y2 = 27,
                    s1 = 0.75, t1 = 0.6640625, s2 = 0.83203125, t2 = 0.7734375,
                    advance = 22,
                }
                chrs[58] = {
                    x1 = 1, y1 = -1, x2 = 12, y2 = 20,
                    s1 = 0.5234375, t1 = 0.3671875, s2 = 0.56640625, t2 = 0.44921875,
                    advance = 13,
                }
                chrs[59] = {
                    x1 = 1, y1 = -5, x2 = 12, y2 = 20,
                    s1 = 0.40234375, t1 = 0.3515625, s2 = 0.4453125, t2 = 0.44921875,
                    advance = 13,
                }
                chrs[60] = {
                    x1 = 0, y1 = -2, x2 = 20, y2 = 21,
                    s1 = 0, t1 = 0.3515625, s2 = 0.078125, t2 = 0.44140625,
                    advance = 22,
                }
                chrs[61] = {
                    x1 = 1, y1 = 2, x2 = 21, y2 = 18,
                    s1 = 0.421875, t1 = 0.21875, s2 = 0.5, t2 = 0.28125,
                    advance = 22,
                }
                chrs[62] = {
                    x1 = 2, y1 = -2, x2 = 22, y2 = 21,
                    s1 = 0.4453125, t1 = 0.359375, s2 = 0.5234375, t2 = 0.44921875,
                    advance = 22,
                }
                chrs[63] = {
                    x1 = 1, y1 = -2, x2 = 21, y2 = 27,
                    s1 = 0.671875, t1 = 0.76953125, s2 = 0.75, t2 = 0.8828125,
                    advance = 22,
                }
                chrs[64] = {
                    x1 = 0, y1 = 0, x2 = 28, y2 = 27,
                    s1 = 0.4296875, t1 = 0.66015625, s2 = 0.5390625, t2 = 0.765625,
                    advance = 28,
                }
                chrs[65] = {
                    x1 = -2, y1 = 0, x2 = 25, y2 = 28,
                    s1 = 0.43359375, t1 = 0.765625, s2 = 0.5390625, t2 = 0.875,
                    advance = 24,
                }
                chrs[66] = {
                    x1 = 2, y1 = 0, x2 = 23, y2 = 27,
                    s1 = 0.73828125, t1 = 0.453125, s2 = 0.8203125, t2 = 0.55859375,
                    advance = 23,
                }
                chrs[67] = {
                    x1 = 1, y1 = 0, x2 = 24, y2 = 27,
                    s1 = 0.703125, t1 = 0.55859375, s2 = 0.79296875, t2 = 0.6640625,
                    advance = 24,
                }
                chrs[68] = {
                    x1 = 2, y1 = 0, x2 = 24, y2 = 27,
                    s1 = 0.56640625, t1 = 0.5546875, s2 = 0.65234375, t2 = 0.66015625,
                    advance = 25,
                }
                chrs[69] = {
                    x1 = 2, y1 = 0, x2 = 22, y2 = 28,
                    s1 = 0.83203125, t1 = 0.6640625, s2 = 0.91015625, t2 = 0.7734375,
                    advance = 22,
                }
                chrs[70] = {
                    x1 = 2, y1 = 0, x2 = 20, y2 = 28,
                    s1 = 0.5390625, t1 = 0.66015625, s2 = 0.609375, t2 = 0.76953125,
                    advance = 20,
                }
                chrs[71] = {
                    x1 = 1, y1 = 0, x2 = 24, y2 = 27,
                    s1 = 0.38671875, t1 = 0.5546875, s2 = 0.4765625, t2 = 0.66015625,
                    advance = 25,
                }
                chrs[72] = {
                    x1 = 2, y1 = 0, x2 = 23, y2 = 27,
                    s1 = 0, t1 = 0.44140625, s2 = 0.08203125, t2 = 0.546875,
                    advance = 25,
                }
                chrs[73] = {
                    x1 = 2, y1 = 0, x2 = 9, y2 = 27,
                    s1 = 0.9453125, t1 = 0.34765625, s2 = 0.97265625, t2 = 0.453125,
                    advance = 11,
                }
                chrs[74] = {
                    x1 = -1, y1 = 0, x2 = 14, y2 = 27,
                    s1 = 0.88671875, t1 = 0.34765625, s2 = 0.9453125, t2 = 0.453125,
                    advance = 16,
                }
                chrs[75] = {
                    x1 = 2, y1 = -1, x2 = 24, y2 = 28,
                    s1 = 0.76953125, t1 = 0.7734375, s2 = 0.85546875, t2 = 0.88671875,
                    advance = 23,
                }
                chrs[76] = {
                    x1 = 2, y1 = -1, x2 = 20, y2 = 27,
                    s1 = 0.91015625, t1 = 0.6640625, s2 = 0.98046875, t2 = 0.7734375,
                    advance = 20,
                }
                chrs[77] = {
                    x1 = 2, y1 = 0, x2 = 29, y2 = 27,
                    s1 = 0.08203125, t1 = 0.65234375, s2 = 0.1875, t2 = 0.7578125,
                    advance = 31,
                }
                chrs[78] = {
                    x1 = 1, y1 = 0, x2 = 23, y2 = 27,
                    s1 = 0.0859375, t1 = 0.546875, s2 = 0.171875, t2 = 0.65234375,
                    advance = 26,
                }
                chrs[79] = {
                    x1 = 1, y1 = 0, x2 = 26, y2 = 27,
                    s1 = 0.2890625, t1 = 0.65234375, s2 = 0.38671875, t2 = 0.7578125,
                    advance = 26,
                }
                chrs[80] = {
                    x1 = 2, y1 = 0, x2 = 23, y2 = 27,
                    s1 = 0.8203125, t1 = 0.453125, s2 = 0.90234375, t2 = 0.55859375,
                    advance = 23,
                }
                chrs[81] = {
                    x1 = 1, y1 = -5, x2 = 26, y2 = 27,
                    s1 = 0.43359375, t1 = 0.875, s2 = 0.53125, t2 = 1,
                    advance = 26,
                }
                chrs[82] = {
                    x1 = 2, y1 = -1, x2 = 23, y2 = 27,
                    s1 = 0, t1 = 0.75390625, s2 = 0.08203125, t2 = 0.86328125,
                    advance = 23,
                }
                chrs[83] = {
                    x1 = -1, y1 = 0, x2 = 21, y2 = 27,
                    s1 = 0.171875, t1 = 0.546875, s2 = 0.2578125, t2 = 0.65234375,
                    advance = 22,
                }
                chrs[84] = {
                    x1 = 0, y1 = 0, x2 = 22, y2 = 27,
                    s1 = 0.2578125, t1 = 0.546875, s2 = 0.34375, t2 = 0.65234375,
                    advance = 21,
                }
                chrs[85] = {
                    x1 = 2, y1 = 0, x2 = 24, y2 = 27,
                    s1 = 0.65234375, t1 = 0.453125, s2 = 0.73828125, t2 = 0.55859375,
                    advance = 26,
                }
                chrs[86] = {
                    x1 = -1, y1 = -1, x2 = 24, y2 = 28,
                    s1 = 0.8984375, t1 = 0.88671875, s2 = 0.99609375, t2 = 1,
                    advance = 24,
                }
                chrs[87] = {
                    x1 = -1, y1 = -1, x2 = 32, y2 = 28,
                    s1 = 0.76953125, t1 = 0.88671875, s2 = 0.8984375, t2 = 1,
                    advance = 31,
                }
                chrs[88] = {
                    x1 = -1, y1 = 0, x2 = 23, y2 = 28,
                    s1 = 0.1875, t1 = 0.7578125, s2 = 0.28125, t2 = 0.8671875,
                    advance = 22,
                }
                chrs[89] = {
                    x1 = -2, y1 = 0, x2 = 22, y2 = 28,
                    s1 = 0.09375, t1 = 0.7578125, s2 = 0.1875, t2 = 0.8671875,
                    advance = 21,
                }
                chrs[90] = {
                    x1 = 0, y1 = 0, x2 = 23, y2 = 27,
                    s1 = 0.4765625, t1 = 0.5546875, s2 = 0.56640625, t2 = 0.66015625,
                    advance = 22,
                }
                chrs[91] = {
                    x1 = 2, y1 = -5, x2 = 14, y2 = 29,
                    s1 = 0.33984375, t1 = 0.8671875, s2 = 0.38671875, t2 = 1,
                    advance = 13,
                }
                chrs[92] = {
                    x1 = -1, y1 = -2, x2 = 14, y2 = 29,
                    s1 = 0.53125, t1 = 0.87890625, s2 = 0.58984375, t2 = 1,
                    advance = 13,
                }
                chrs[93] = {
                    x1 = -1, y1 = -5, x2 = 11, y2 = 29,
                    s1 = 0.38671875, t1 = 0.8671875, s2 = 0.43359375, t2 = 1,
                    advance = 13,
                }
                chrs[94] = {
                    x1 = 1, y1 = 10, x2 = 21, y2 = 27,
                    s1 = 0.234375, t1 = 0.21484375, s2 = 0.3125, t2 = 0.28125,
                    advance = 22,
                }
                chrs[95] = {
                    x1 = -1, y1 = -5, x2 = 17, y2 = 0,
                    s1 = 0.62109375, t1 = 0.25, s2 = 0.69140625, t2 = 0.26953125,
                    advance = 16,
                }
                chrs[96] = {
                    x1 = 0, y1 = 19, x2 = 13, y2 = 29,
                    s1 = 0.18359375, t1 = 0.23828125, s2 = 0.234375, t2 = 0.27734375,
                    advance = 13,
                }
                chrs[97] = {
                    x1 = 0, y1 = 0, x2 = 21, y2 = 20,
                    s1 = 0.53515625, t1 = 0.26953125, s2 = 0.6171875, t2 = 0.34765625,
                    advance = 20,
                }
                chrs[98] = {
                    x1 = 2, y1 = 0, x2 = 22, y2 = 27,
                    s1 = 0.16015625, t1 = 0.44140625, s2 = 0.23828125, t2 = 0.546875,
                    advance = 22,
                }
                chrs[99] = {
                    x1 = 0, y1 = 0, x2 = 20, y2 = 20,
                    s1 = 0.6953125, t1 = 0.26953125, s2 = 0.7734375, t2 = 0.34765625,
                    advance = 19,
                }
                chrs[100] = {
                    x1 = 0, y1 = 0, x2 = 23, y2 = 27,
                    s1 = 0.79296875, t1 = 0.55859375, s2 = 0.8828125, t2 = 0.6640625,
                    advance = 21,
                }
                chrs[101] = {
                    x1 = 0, y1 = 0, x2 = 20, y2 = 20,
                    s1 = 0.7734375, t1 = 0.26953125, s2 = 0.8515625, t2 = 0.34765625,
                    advance = 20,
                }
                chrs[102] = {
                    x1 = -1, y1 = 0, x2 = 14, y2 = 28,
                    s1 = 0.37109375, t1 = 0.7578125, s2 = 0.4296875, t2 = 0.8671875,
                    advance = 12,
                }
                chrs[103] = {
                    x1 = 0, y1 = -7, x2 = 19, y2 = 20,
                    s1 = 0.58984375, t1 = 0.34765625, s2 = 0.6640625, t2 = 0.453125,
                    advance = 21,
                }
                chrs[104] = {
                    x1 = 1, y1 = 0, x2 = 20, y2 = 27,
                    s1 = 0.8125, t1 = 0.34765625, s2 = 0.88671875, t2 = 0.453125,
                    advance = 22,
                }
                chrs[105] = {
                    x1 = 1, y1 = 0, x2 = 11, y2 = 28,
                    s1 = 0.6640625, t1 = 0.66015625, s2 = 0.703125, t2 = 0.76953125,
                    advance = 11,
                }
                chrs[106] = {
                    x1 = -2, y1 = -6, x2 = 11, y2 = 28,
                    s1 = 0.2890625, t1 = 0.8671875, s2 = 0.33984375, t2 = 1,
                    advance = 11,
                }
                chrs[107] = {
                    x1 = 2, y1 = 0, x2 = 21, y2 = 27,
                    s1 = 0.73828125, t1 = 0.34765625, s2 = 0.8125, t2 = 0.453125,
                    advance = 19,
                }
                chrs[108] = {
                    x1 = 2, y1 = 0, x2 = 9, y2 = 27,
                    s1 = 0.31640625, t1 = 0.44140625, s2 = 0.34375, t2 = 0.546875,
                    advance = 11,
                }
                chrs[109] = {
                    x1 = 1, y1 = 0, x2 = 28, y2 = 20,
                    s1 = 0.234375, t1 = 0.28125, s2 = 0.33984375, t2 = 0.359375,
                    advance = 30,
                }
                chrs[110] = {
                    x1 = 1, y1 = 0, x2 = 20, y2 = 20,
                    s1 = 0.8515625, t1 = 0.26953125, s2 = 0.92578125, t2 = 0.34765625,
                    advance = 22,
                }
                chrs[111] = {
                    x1 = 0, y1 = 0, x2 = 21, y2 = 20,
                    s1 = 0.33984375, t1 = 0.2734375, s2 = 0.421875, t2 = 0.3515625,
                    advance = 21,
                }
                chrs[112] = {
                    x1 = 2, y1 = -7, x2 = 22, y2 = 20,
                    s1 = 0.23828125, t1 = 0.44140625, s2 = 0.31640625, t2 = 0.546875,
                    advance = 22,
                }
                chrs[113] = {
                    x1 = 0, y1 = -7, x2 = 20, y2 = 20,
                    s1 = 0.08203125, t1 = 0.44140625, s2 = 0.16015625, t2 = 0.546875,
                    advance = 21,
                }
                chrs[114] = {
                    x1 = 2, y1 = 0, x2 = 16, y2 = 20,
                    s1 = 0.92578125, t1 = 0.26953125, s2 = 0.98046875, t2 = 0.34765625,
                    advance = 15,
                }
                chrs[115] = {
                    x1 = -1, y1 = 0, x2 = 19, y2 = 20,
                    s1 = 0.6171875, t1 = 0.26953125, s2 = 0.6953125, t2 = 0.34765625,
                    advance = 19,
                }
                chrs[116] = {
                    x1 = 0, y1 = 0, x2 = 15, y2 = 25,
                    s1 = 0.34375, t1 = 0.3515625, s2 = 0.40234375, t2 = 0.44921875,
                    advance = 14,
                }
                chrs[117] = {
                    x1 = 1, y1 = 0, x2 = 22, y2 = 20,
                    s1 = 0, t1 = 0.2734375, s2 = 0.08203125, t2 = 0.3515625,
                    advance = 21,
                }
                chrs[118] = {
                    x1 = -1, y1 = -1, x2 = 19, y2 = 21,
                    s1 = 0.078125, t1 = 0.35546875, s2 = 0.15625, t2 = 0.44140625,
                    advance = 18,
                }
                chrs[119] = {
                    x1 = -1, y1 = 0, x2 = 28, y2 = 21,
                    s1 = 0.15625, t1 = 0.359375, s2 = 0.26953125, t2 = 0.44140625,
                    advance = 27,
                }
                chrs[120] = {
                    x1 = -1, y1 = 0, x2 = 19, y2 = 21,
                    s1 = 0.15625, t1 = 0.27734375, s2 = 0.234375, t2 = 0.359375,
                    advance = 17,
                }
                chrs[121] = {
                    x1 = -1, y1 = -8, x2 = 20, y2 = 21,
                    s1 = 0.58984375, t1 = 0.76953125, s2 = 0.671875, t2 = 0.8828125,
                    advance = 19,
                }
                chrs[122] = {
                    x1 = 0, y1 = 0, x2 = 19, y2 = 20,
                    s1 = 0.08203125, t1 = 0.27734375, s2 = 0.15625, t2 = 0.35546875,
                    advance = 18,
                }
                chrs[123] = {
                    x1 = 0, y1 = -5, x2 = 14, y2 = 29,
                    s1 = 0.234375, t1 = 0.8671875, s2 = 0.2890625, t2 = 1,
                    advance = 13,
                }
                chrs[124] = {
                    x1 = 3, y1 = 0, x2 = 9, y2 = 27,
                    s1 = 0.97265625, t1 = 0.34765625, s2 = 0.99609375, t2 = 0.453125,
                    advance = 12,
                }
                chrs[125] = {
                    x1 = -1, y1 = -5, x2 = 13, y2 = 29,
                    s1 = 0.1796875, t1 = 0.8671875, s2 = 0.234375, t2 = 1,
                    advance = 13,
                }
                chrs[126] = {
                    x1 = 0, y1 = 6, x2 = 22, y2 = 14,
                    s1 = 0.53515625, t1 = 0.23828125, s2 = 0.62109375, t2 = 0.26953125,
                    advance = 22,
                }
            end)();
            return chrs
        end)(),
    },
}

return am._init_fonts(font_data, "mysprites.png")