module dq (clk, q, d);
  input  clk;
  input  [width-1:0] d;
  output [width-1:0] q;
  parameter width=8;
  parameter depth=2;
  integer i;
  reg [width-1:0] delay_line [depth-1:0];
  always @(posedge clk) begin
    delay_line[0] <= d;
    for(i=1; i<depth; i=i+1) begin
      delay_line[i] <= delay_line[i-1];
    end
  end
  assign q = delay_line[depth-1];
endmodule

module uut(clk, a, b, a_e0, b_e1, a_m2, b_m3, a_s4, b_s5, z_m6, z_e7, shift_amount8, m9, e10, e11, z_m12, z_e13, z_m14, z_m15, z_e16, z_s17, e_max18, overflow19, z_inf20, z_nan21, result22, z);
  input clk;
  input [31:0] a;
  input [31:0] b;
  output [8:0] a_e0;
  output [8:0] b_e1;
  output [47:0] a_m2;
  output [47:0] b_m3;
  output [0:0] a_s4;
  output [0:0] b_s5;
  output [47:0] z_m6;
  output [8:0] z_e7;
  output [8:0] shift_amount8;
  output [47:0] m9;
  output [8:0] e10;
  output [8:0] e11;
  output [47:0] z_m12;
  output [8:0] z_e13;
  output [23:0] z_m14;
  output [23:0] z_m15;
  output [8:0] z_e16;
  output [0:0] z_s17;
  output [7:0] e_max18;
  output [0:0] overflow19;
  output [0:0] z_inf20;
  output [0:0] z_nan21;
  output [31:0] result22;
  output [31:0] z;
  wire [31:0] s_0;
  wire [0:0] s_1;
  wire [7:0] s_2;
  wire [6:0] s_3;
  wire [7:0] s_4;
  wire [22:0] s_5;
  wire [7:0] s_6;
  wire [0:0] s_7;
  wire [22:0] s_8;
  wire [0:0] s_9;
  wire [0:0] s_10;
  wire [7:0] s_11;
  wire [0:0] s_12;
  wire [22:0] s_13;
  wire [0:0] s_14;
  wire [0:0] s_15;
  wire [7:0] s_16;
  wire [0:0] s_17;
  wire [7:0] s_18;
  wire [7:0] s_19;
  wire [0:0] s_20;
  wire [0:0] s_21;
  wire [0:0] s_22;
  wire [23:0] s_23;
  wire [31:0] s_24;
  wire [0:0] s_25;
  wire [7:0] s_26;
  wire [6:0] s_27;
  wire [7:0] s_28;
  wire [22:0] s_29;
  wire [7:0] s_30;
  wire [0:0] s_31;
  wire [22:0] s_32;
  wire [0:0] s_33;
  wire [0:0] s_34;
  wire [7:0] s_35;
  wire [0:0] s_36;
  wire [22:0] s_37;
  wire [0:0] s_38;
  wire [0:0] s_39;
  wire [7:0] s_40;
  wire [0:0] s_41;
  wire [7:0] s_42;
  wire [7:0] s_43;
  wire [0:0] s_44;
  wire [0:0] s_45;
  wire [0:0] s_46;
  wire [23:0] s_47;
  wire [8:0] s_48;
  wire [8:0] s_49;
  wire [47:0] s_50;
  wire [47:0] s_51;
  wire [0:0] s_52;
  wire [8:0] s_53;
  wire [0:0] s_54;
  wire [8:0] s_55;
  wire [47:0] s_56;
  wire [8:0] s_57;
  wire [8:0] s_58;
  wire [0:0] s_59;
  wire [0:0] s_60;
  wire [0:0] s_61;
  wire [8:0] s_62;
  wire [47:0] s_63;
  wire [8:0] s_64;
  wire [0:0] s_65;
  wire [5:0] s_66;
  wire [5:0] s_67;
  wire [5:0] s_68;
  wire [0:0] s_69;
  wire [5:0] s_70;
  wire [5:0] s_71;
  wire [0:0] s_72;
  wire [5:0] s_73;
  wire [5:0] s_74;
  wire [0:0] s_75;
  wire [5:0] s_76;
  wire [5:0] s_77;
  wire [0:0] s_78;
  wire [5:0] s_79;
  wire [5:0] s_80;
  wire [0:0] s_81;
  wire [5:0] s_82;
  wire [5:0] s_83;
  wire [0:0] s_84;
  wire [5:0] s_85;
  wire [5:0] s_86;
  wire [0:0] s_87;
  wire [5:0] s_88;
  wire [5:0] s_89;
  wire [0:0] s_90;
  wire [5:0] s_91;
  wire [5:0] s_92;
  wire [0:0] s_93;
  wire [5:0] s_94;
  wire [5:0] s_95;
  wire [0:0] s_96;
  wire [5:0] s_97;
  wire [5:0] s_98;
  wire [0:0] s_99;
  wire [5:0] s_100;
  wire [5:0] s_101;
  wire [0:0] s_102;
  wire [5:0] s_103;
  wire [5:0] s_104;
  wire [0:0] s_105;
  wire [5:0] s_106;
  wire [5:0] s_107;
  wire [0:0] s_108;
  wire [5:0] s_109;
  wire [5:0] s_110;
  wire [0:0] s_111;
  wire [5:0] s_112;
  wire [5:0] s_113;
  wire [0:0] s_114;
  wire [4:0] s_115;
  wire [5:0] s_116;
  wire [0:0] s_117;
  wire [4:0] s_118;
  wire [5:0] s_119;
  wire [0:0] s_120;
  wire [4:0] s_121;
  wire [5:0] s_122;
  wire [0:0] s_123;
  wire [4:0] s_124;
  wire [5:0] s_125;
  wire [0:0] s_126;
  wire [4:0] s_127;
  wire [5:0] s_128;
  wire [0:0] s_129;
  wire [4:0] s_130;
  wire [5:0] s_131;
  wire [0:0] s_132;
  wire [4:0] s_133;
  wire [5:0] s_134;
  wire [0:0] s_135;
  wire [4:0] s_136;
  wire [5:0] s_137;
  wire [0:0] s_138;
  wire [4:0] s_139;
  wire [5:0] s_140;
  wire [0:0] s_141;
  wire [4:0] s_142;
  wire [5:0] s_143;
  wire [0:0] s_144;
  wire [4:0] s_145;
  wire [5:0] s_146;
  wire [0:0] s_147;
  wire [4:0] s_148;
  wire [5:0] s_149;
  wire [0:0] s_150;
  wire [4:0] s_151;
  wire [5:0] s_152;
  wire [0:0] s_153;
  wire [4:0] s_154;
  wire [5:0] s_155;
  wire [0:0] s_156;
  wire [4:0] s_157;
  wire [5:0] s_158;
  wire [0:0] s_159;
  wire [4:0] s_160;
  wire [5:0] s_161;
  wire [0:0] s_162;
  wire [3:0] s_163;
  wire [5:0] s_164;
  wire [0:0] s_165;
  wire [3:0] s_166;
  wire [5:0] s_167;
  wire [0:0] s_168;
  wire [3:0] s_169;
  wire [5:0] s_170;
  wire [0:0] s_171;
  wire [3:0] s_172;
  wire [5:0] s_173;
  wire [0:0] s_174;
  wire [3:0] s_175;
  wire [5:0] s_176;
  wire [0:0] s_177;
  wire [3:0] s_178;
  wire [5:0] s_179;
  wire [0:0] s_180;
  wire [3:0] s_181;
  wire [5:0] s_182;
  wire [0:0] s_183;
  wire [3:0] s_184;
  wire [5:0] s_185;
  wire [0:0] s_186;
  wire [2:0] s_187;
  wire [5:0] s_188;
  wire [0:0] s_189;
  wire [2:0] s_190;
  wire [5:0] s_191;
  wire [0:0] s_192;
  wire [2:0] s_193;
  wire [5:0] s_194;
  wire [0:0] s_195;
  wire [2:0] s_196;
  wire [5:0] s_197;
  wire [0:0] s_198;
  wire [1:0] s_199;
  wire [5:0] s_200;
  wire [0:0] s_201;
  wire [1:0] s_202;
  wire [5:0] s_203;
  wire [0:0] s_204;
  wire [0:0] s_205;
  wire [5:0] s_206;
  wire [0:0] s_207;
  wire [0:0] s_208;
  wire [5:0] s_209;
  wire [8:0] s_210;
  wire [8:0] s_211;
  wire [8:0] s_212;
  wire [0:0] s_213;
  wire [8:0] s_214;
  wire [47:0] s_215;
  wire [8:0] s_216;
  wire [0:0] s_217;
  wire [0:0] s_218;
  wire [21:0] s_219;
  wire [23:0] s_220;
  wire [0:0] s_221;
  wire [23:0] s_222;
  wire [0:0] s_223;
  wire [0:0] s_224;
  wire [0:0] s_225;
  wire [0:0] s_226;
  wire [24:0] s_227;
  wire [24:0] s_228;
  wire [0:0] s_229;
  wire [23:0] s_230;
  wire [23:0] s_231;
  wire [23:0] s_232;
  wire [0:0] s_233;
  wire [8:0] s_234;
  wire [8:0] s_235;
  wire [7:0] s_236;
  wire [8:0] s_237;
  wire [0:0] s_238;
  wire [7:0] s_239;
  wire [0:0] s_240;
  wire [0:0] s_241;
  wire [0:0] s_242;
  wire [6:0] s_243;
  wire [7:0] s_244;
  wire [8:0] s_245;
  wire [22:0] s_246;
  wire [31:0] s_247;
  wire [7:0] s_248;
  wire [0:0] s_249;
  wire [0:0] s_250;
  wire [0:0] s_251;
  wire [0:0] s_252;
  wire [7:0] s_253;
  wire [8:0] s_254;
  wire [22:0] s_255;
  wire [31:0] s_256;
  wire [31:0] s_257;
  wire [30:0] s_258;
  wire [31:0] s_259;
  wire [23:0] s_260;
  wire [0:0] s_261;
  wire [31:0] s_262;
  wire [30:0] s_263;
  wire [31:0] s_264;
  wire [31:0] s_265;
  wire [30:0] s_266;
  wire [31:0] s_267;
  wire [31:0] s_268;

  assign s_0 = a;
  assign s_1 = s_0[31];
  assign s_2 = s_0[30:23];
  assign s_3 = 7'd127;
  assign s_4 = s_2 - s_3;
  assign s_5 = s_0[22:0];
  assign s_6 = 8'd128;
  assign s_7 = s_4 == s_6;
  assign s_8 = 23'd0;
  assign s_9 = s_5 == s_8;
  assign s_10 = s_7 & s_9;
  assign s_11 = 8'd128;
  assign s_12 = s_4 == s_11;
  assign s_13 = 23'd0;
  assign s_14 = s_5 != s_13;
  assign s_15 = s_12 & s_14;
  assign s_16 = -8'd127;
  assign s_17 = s_4 == s_16;
  assign s_18 = -8'd126;
  assign s_19 = s_17?s_18:s_4;
  assign s_20 = 1'd0;
  assign s_21 = 1'd1;
  assign s_22 = s_17?s_20:s_21;
  assign s_23 = {s_22,s_5};
  assign s_24 = b;
  assign s_25 = s_24[31];
  assign s_26 = s_24[30:23];
  assign s_27 = 7'd127;
  assign s_28 = s_26 - s_27;
  assign s_29 = s_24[22:0];
  assign s_30 = 8'd128;
  assign s_31 = s_28 == s_30;
  assign s_32 = 23'd0;
  assign s_33 = s_29 == s_32;
  assign s_34 = s_31 & s_33;
  assign s_35 = 8'd128;
  assign s_36 = s_28 == s_35;
  assign s_37 = 23'd0;
  assign s_38 = s_29 != s_37;
  assign s_39 = s_36 & s_38;
  assign s_40 = -8'd127;
  assign s_41 = s_28 == s_40;
  assign s_42 = -8'd126;
  assign s_43 = s_41?s_42:s_28;
  assign s_44 = 1'd0;
  assign s_45 = 1'd1;
  assign s_46 = s_41?s_44:s_45;
  assign s_47 = {s_46,s_29};
  assign s_48 = $signed(s_19);
  assign s_49 = $signed(s_43);
  assign s_50 = s_23;
  assign s_51 = s_47;
  assign s_52 = s_1 ^ s_25;
  assign s_53 = s_48 + s_49;
  assign s_54 = 1'd1;
  assign s_55 = s_53 + s_54;
  assign s_56 = s_50 * s_51;
  assign s_57 = -9'd126;
  assign s_58 = s_57 - s_55;
  assign s_59 = 1'd0;
  assign s_60 = $signed(s_58) > $signed(s_59);
  assign s_61 = 1'd0;
  assign s_62 = s_60?s_58:s_61;
  assign s_63 = s_56 >> s_62;
  assign s_64 = s_55 + s_62;
  assign s_65 = s_63[0];
  assign s_66 = 6'd47;
  assign s_67 = 6'd48;
  assign s_68 = s_65?s_66:s_67;
  assign s_69 = s_63[1];
  assign s_70 = 6'd46;
  assign s_71 = s_69?s_70:s_68;
  assign s_72 = s_63[2];
  assign s_73 = 6'd45;
  assign s_74 = s_72?s_73:s_71;
  assign s_75 = s_63[3];
  assign s_76 = 6'd44;
  assign s_77 = s_75?s_76:s_74;
  assign s_78 = s_63[4];
  assign s_79 = 6'd43;
  assign s_80 = s_78?s_79:s_77;
  assign s_81 = s_63[5];
  assign s_82 = 6'd42;
  assign s_83 = s_81?s_82:s_80;
  assign s_84 = s_63[6];
  assign s_85 = 6'd41;
  assign s_86 = s_84?s_85:s_83;
  assign s_87 = s_63[7];
  assign s_88 = 6'd40;
  assign s_89 = s_87?s_88:s_86;
  assign s_90 = s_63[8];
  assign s_91 = 6'd39;
  assign s_92 = s_90?s_91:s_89;
  assign s_93 = s_63[9];
  assign s_94 = 6'd38;
  assign s_95 = s_93?s_94:s_92;
  assign s_96 = s_63[10];
  assign s_97 = 6'd37;
  assign s_98 = s_96?s_97:s_95;
  assign s_99 = s_63[11];
  assign s_100 = 6'd36;
  assign s_101 = s_99?s_100:s_98;
  assign s_102 = s_63[12];
  assign s_103 = 6'd35;
  assign s_104 = s_102?s_103:s_101;
  assign s_105 = s_63[13];
  assign s_106 = 6'd34;
  assign s_107 = s_105?s_106:s_104;
  assign s_108 = s_63[14];
  assign s_109 = 6'd33;
  assign s_110 = s_108?s_109:s_107;
  assign s_111 = s_63[15];
  assign s_112 = 6'd32;
  assign s_113 = s_111?s_112:s_110;
  assign s_114 = s_63[16];
  assign s_115 = 5'd31;
  assign s_116 = s_114?s_115:s_113;
  assign s_117 = s_63[17];
  assign s_118 = 5'd30;
  assign s_119 = s_117?s_118:s_116;
  assign s_120 = s_63[18];
  assign s_121 = 5'd29;
  assign s_122 = s_120?s_121:s_119;
  assign s_123 = s_63[19];
  assign s_124 = 5'd28;
  assign s_125 = s_123?s_124:s_122;
  assign s_126 = s_63[20];
  assign s_127 = 5'd27;
  assign s_128 = s_126?s_127:s_125;
  assign s_129 = s_63[21];
  assign s_130 = 5'd26;
  assign s_131 = s_129?s_130:s_128;
  assign s_132 = s_63[22];
  assign s_133 = 5'd25;
  assign s_134 = s_132?s_133:s_131;
  assign s_135 = s_63[23];
  assign s_136 = 5'd24;
  assign s_137 = s_135?s_136:s_134;
  assign s_138 = s_63[24];
  assign s_139 = 5'd23;
  assign s_140 = s_138?s_139:s_137;
  assign s_141 = s_63[25];
  assign s_142 = 5'd22;
  assign s_143 = s_141?s_142:s_140;
  assign s_144 = s_63[26];
  assign s_145 = 5'd21;
  assign s_146 = s_144?s_145:s_143;
  assign s_147 = s_63[27];
  assign s_148 = 5'd20;
  assign s_149 = s_147?s_148:s_146;
  assign s_150 = s_63[28];
  assign s_151 = 5'd19;
  assign s_152 = s_150?s_151:s_149;
  assign s_153 = s_63[29];
  assign s_154 = 5'd18;
  assign s_155 = s_153?s_154:s_152;
  assign s_156 = s_63[30];
  assign s_157 = 5'd17;
  assign s_158 = s_156?s_157:s_155;
  assign s_159 = s_63[31];
  assign s_160 = 5'd16;
  assign s_161 = s_159?s_160:s_158;
  assign s_162 = s_63[32];
  assign s_163 = 4'd15;
  assign s_164 = s_162?s_163:s_161;
  assign s_165 = s_63[33];
  assign s_166 = 4'd14;
  assign s_167 = s_165?s_166:s_164;
  assign s_168 = s_63[34];
  assign s_169 = 4'd13;
  assign s_170 = s_168?s_169:s_167;
  assign s_171 = s_63[35];
  assign s_172 = 4'd12;
  assign s_173 = s_171?s_172:s_170;
  assign s_174 = s_63[36];
  assign s_175 = 4'd11;
  assign s_176 = s_174?s_175:s_173;
  assign s_177 = s_63[37];
  assign s_178 = 4'd10;
  assign s_179 = s_177?s_178:s_176;
  assign s_180 = s_63[38];
  assign s_181 = 4'd9;
  assign s_182 = s_180?s_181:s_179;
  assign s_183 = s_63[39];
  assign s_184 = 4'd8;
  assign s_185 = s_183?s_184:s_182;
  assign s_186 = s_63[40];
  assign s_187 = 3'd7;
  assign s_188 = s_186?s_187:s_185;
  assign s_189 = s_63[41];
  assign s_190 = 3'd6;
  assign s_191 = s_189?s_190:s_188;
  assign s_192 = s_63[42];
  assign s_193 = 3'd5;
  assign s_194 = s_192?s_193:s_191;
  assign s_195 = s_63[43];
  assign s_196 = 3'd4;
  assign s_197 = s_195?s_196:s_194;
  assign s_198 = s_63[44];
  assign s_199 = 2'd3;
  assign s_200 = s_198?s_199:s_197;
  assign s_201 = s_63[45];
  assign s_202 = 2'd2;
  assign s_203 = s_201?s_202:s_200;
  assign s_204 = s_63[46];
  assign s_205 = 1'd1;
  assign s_206 = s_204?s_205:s_203;
  assign s_207 = s_63[47];
  assign s_208 = 1'd0;
  assign s_209 = s_207?s_208:s_206;
  assign s_210 = -9'd126;
  assign s_211 = s_64 - s_210;
  assign s_212 = s_209;
  assign s_213 = s_212 <= s_211;
  assign s_214 = s_213?s_209:s_211;
  assign s_215 = s_63 << s_214;
  assign s_216 = s_64 - s_214;
  assign s_217 = s_215[23];
  assign s_218 = s_215[22];
  assign s_219 = s_215[21:0];
  assign s_220 = 24'd0;
  assign s_221 = s_219 != s_220;
  assign s_222 = s_215[47:24];
  assign s_223 = s_218 | s_221;
  assign s_224 = s_222[0];
  assign s_225 = s_223 | s_224;
  assign s_226 = s_217 & s_225;
  assign s_227 = s_222;
  assign s_228 = s_227 + s_226;
  assign s_229 = s_228[24];
  assign s_230 = s_228[24:1];
  assign s_231 = s_228[23:0];
  assign s_232 = s_229?s_230:s_231;
  assign s_233 = 1'd1;
  assign s_234 = s_216 + s_233;
  assign s_235 = s_229?s_234:s_216;
  assign s_236 = 8'd127;
  assign s_237 = 9'd127;
  assign s_238 = $signed(s_235) > $signed(s_237);
  assign s_239 = s_235[7:0];
  assign s_240 = s_238 | s_10;
  assign s_241 = s_240 | s_34;
  assign s_242 = s_15 | s_39;
  assign s_243 = 7'd127;
  assign s_244 = s_239 + s_243;
  assign s_245 = {s_52,s_244};
  assign s_246 = s_232[22:0];
  assign s_247 = {s_245,s_246};
  assign s_248 = -8'd126;
  assign s_249 = s_239 == s_248;
  assign s_250 = s_232[23];
  assign s_251 = ~s_250;
  assign s_252 = s_249 & s_251;
  assign s_253 = 8'd0;
  assign s_254 = {s_52,s_253};
  assign s_255 = s_232[22:0];
  assign s_256 = {s_254,s_255};
  assign s_257 = s_252?s_256:s_247;
  assign s_258 = 31'd0;
  assign s_259 = {s_52,s_258};
  assign s_260 = 24'd0;
  assign s_261 = s_232 == s_260;
  assign s_262 = s_261?s_259:s_257;
  assign s_263 = 31'd2139095040;
  assign s_264 = {s_52,s_263};
  assign s_265 = s_241?s_264:s_262;
  assign s_266 = 31'd2143289344;
  assign s_267 = {s_52,s_266};
  assign s_268 = s_242?s_267:s_265;
  assign a_e0 = s_48;
  assign b_e1 = s_49;
  assign a_m2 = s_50;
  assign b_m3 = s_51;
  assign a_s4 = s_1;
  assign b_s5 = s_25;
  assign z_m6 = s_63;
  assign z_e7 = s_64;
  assign shift_amount8 = s_214;
  assign m9 = s_63;
  assign e10 = s_64;
  assign e11 = s_216;
  assign z_m12 = s_215;
  assign z_e13 = s_216;
  assign z_m14 = s_222;
  assign z_m15 = s_232;
  assign z_e16 = s_235;
  assign z_s17 = s_52;
  assign e_max18 = s_236;
  assign overflow19 = s_238;
  assign z_inf20 = s_241;
  assign z_nan21 = s_242;
  assign result22 = s_268;
  assign z = s_268;
endmodule
