/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/users/btech/rajvm22/Documents/LAB6/seven_bit_adder/seven_bit_adder.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static unsigned int ng3[] = {0U, 0U};
static int ng4[] = {3, 0};
static unsigned int ng5[] = {1U, 0U};
static int ng6[] = {6, 0};
static int ng7[] = {4, 0};
static unsigned int ng8[] = {2U, 0U};
static unsigned int ng9[] = {3U, 0U};
static unsigned int ng10[] = {4U, 0U};
static unsigned int ng11[] = {5U, 0U};



static void Always_59_0(char *t0)
{
    char t8[8];
    char t24[8];
    char t38[8];
    char t54[8];
    char t62[8];
    char t104[8];
    char t128[8];
    char t129[8];
    char t130[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    char *t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    char *t76;
    char *t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    int t86;
    int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    char *t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    char *t100;
    char *t101;
    char *t102;
    char *t103;
    char *t105;
    char *t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    char *t119;
    char *t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    char *t126;
    char *t127;
    char *t131;
    char *t132;
    char *t133;
    char *t134;
    char *t135;
    char *t136;
    unsigned int t137;
    int t138;
    char *t139;
    unsigned int t140;
    int t141;
    int t142;
    char *t143;
    unsigned int t144;
    int t145;
    int t146;
    unsigned int t147;
    int t148;
    unsigned int t149;
    unsigned int t150;
    int t151;
    int t152;

LAB0:    t1 = (t0 + 4120U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 4688);
    *((int *)t2) = 1;
    t3 = (t0 + 4152);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(59, ng0);

LAB5:    xsi_set_current_line(60, ng0);
    t4 = (t0 + 3048);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    t9 = (t6 + 4);
    t10 = (t7 + 4);
    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t9);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t10);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB9;

LAB6:    if (t20 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t8) = 1;

LAB9:    memset(t24, 0, 8);
    t25 = (t8 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (~(t26));
    t28 = *((unsigned int *)t8);
    t29 = (t28 & t27);
    t30 = (t29 & 1U);
    if (t30 != 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t25) != 0)
        goto LAB12;

LAB13:    t32 = (t24 + 4);
    t33 = *((unsigned int *)t24);
    t34 = *((unsigned int *)t32);
    t35 = (t33 || t34);
    if (t35 > 0)
        goto LAB14;

LAB15:    memcpy(t62, t24, 8);

LAB16:    t94 = (t62 + 4);
    t95 = *((unsigned int *)t94);
    t96 = (~(t95));
    t97 = *((unsigned int *)t62);
    t98 = (t97 & t96);
    t99 = (t98 != 0);
    if (t99 > 0)
        goto LAB28;

LAB29:
LAB30:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    goto LAB2;

LAB8:    t23 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB9;

LAB10:    *((unsigned int *)t24) = 1;
    goto LAB13;

LAB12:    t31 = (t24 + 4);
    *((unsigned int *)t24) = 1;
    *((unsigned int *)t31) = 1;
    goto LAB13;

LAB14:    t36 = (t0 + 2168U);
    t37 = *((char **)t36);
    t36 = ((char*)((ng2)));
    memset(t38, 0, 8);
    t39 = (t37 + 4);
    t40 = (t36 + 4);
    t41 = *((unsigned int *)t37);
    t42 = *((unsigned int *)t36);
    t43 = (t41 ^ t42);
    t44 = *((unsigned int *)t39);
    t45 = *((unsigned int *)t40);
    t46 = (t44 ^ t45);
    t47 = (t43 | t46);
    t48 = *((unsigned int *)t39);
    t49 = *((unsigned int *)t40);
    t50 = (t48 | t49);
    t51 = (~(t50));
    t52 = (t47 & t51);
    if (t52 != 0)
        goto LAB20;

LAB17:    if (t50 != 0)
        goto LAB19;

LAB18:    *((unsigned int *)t38) = 1;

LAB20:    memset(t54, 0, 8);
    t55 = (t38 + 4);
    t56 = *((unsigned int *)t55);
    t57 = (~(t56));
    t58 = *((unsigned int *)t38);
    t59 = (t58 & t57);
    t60 = (t59 & 1U);
    if (t60 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t55) != 0)
        goto LAB23;

LAB24:    t63 = *((unsigned int *)t24);
    t64 = *((unsigned int *)t54);
    t65 = (t63 & t64);
    *((unsigned int *)t62) = t65;
    t66 = (t24 + 4);
    t67 = (t54 + 4);
    t68 = (t62 + 4);
    t69 = *((unsigned int *)t66);
    t70 = *((unsigned int *)t67);
    t71 = (t69 | t70);
    *((unsigned int *)t68) = t71;
    t72 = *((unsigned int *)t68);
    t73 = (t72 != 0);
    if (t73 == 1)
        goto LAB25;

LAB26:
LAB27:    goto LAB16;

LAB19:    t53 = (t38 + 4);
    *((unsigned int *)t38) = 1;
    *((unsigned int *)t53) = 1;
    goto LAB20;

LAB21:    *((unsigned int *)t54) = 1;
    goto LAB24;

LAB23:    t61 = (t54 + 4);
    *((unsigned int *)t54) = 1;
    *((unsigned int *)t61) = 1;
    goto LAB24;

LAB25:    t74 = *((unsigned int *)t62);
    t75 = *((unsigned int *)t68);
    *((unsigned int *)t62) = (t74 | t75);
    t76 = (t24 + 4);
    t77 = (t54 + 4);
    t78 = *((unsigned int *)t24);
    t79 = (~(t78));
    t80 = *((unsigned int *)t76);
    t81 = (~(t80));
    t82 = *((unsigned int *)t54);
    t83 = (~(t82));
    t84 = *((unsigned int *)t77);
    t85 = (~(t84));
    t86 = (t79 & t81);
    t87 = (t83 & t85);
    t88 = (~(t86));
    t89 = (~(t87));
    t90 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t90 & t88);
    t91 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t91 & t89);
    t92 = *((unsigned int *)t62);
    *((unsigned int *)t62) = (t92 & t88);
    t93 = *((unsigned int *)t62);
    *((unsigned int *)t62) = (t93 & t89);
    goto LAB27;

LAB28:    xsi_set_current_line(60, ng0);

LAB31:    xsi_set_current_line(61, ng0);
    t100 = (t0 + 3208);
    t101 = (t100 + 56U);
    t102 = *((char **)t101);
    t103 = ((char*)((ng3)));
    memset(t104, 0, 8);
    t105 = (t102 + 4);
    t106 = (t103 + 4);
    t107 = *((unsigned int *)t102);
    t108 = *((unsigned int *)t103);
    t109 = (t107 ^ t108);
    t110 = *((unsigned int *)t105);
    t111 = *((unsigned int *)t106);
    t112 = (t110 ^ t111);
    t113 = (t109 | t112);
    t114 = *((unsigned int *)t105);
    t115 = *((unsigned int *)t106);
    t116 = (t114 | t115);
    t117 = (~(t116));
    t118 = (t113 & t117);
    if (t118 != 0)
        goto LAB35;

LAB32:    if (t116 != 0)
        goto LAB34;

LAB33:    *((unsigned int *)t104) = 1;

LAB35:    t120 = (t104 + 4);
    t121 = *((unsigned int *)t120);
    t122 = (~(t121));
    t123 = *((unsigned int *)t104);
    t124 = (t123 & t122);
    t125 = (t124 != 0);
    if (t125 > 0)
        goto LAB36;

LAB37:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t8, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t5);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t7);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t6);
    t19 = *((unsigned int *)t7);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB45;

LAB42:    if (t20 != 0)
        goto LAB44;

LAB43:    *((unsigned int *)t8) = 1;

LAB45:    t10 = (t8 + 4);
    t26 = *((unsigned int *)t10);
    t27 = (~(t26));
    t28 = *((unsigned int *)t8);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB46;

LAB47:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng8)));
    memset(t8, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t5);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t7);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t6);
    t19 = *((unsigned int *)t7);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB55;

LAB52:    if (t20 != 0)
        goto LAB54;

LAB53:    *((unsigned int *)t8) = 1;

LAB55:    t10 = (t8 + 4);
    t26 = *((unsigned int *)t10);
    t27 = (~(t26));
    t28 = *((unsigned int *)t8);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB56;

LAB57:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng9)));
    memset(t8, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t5);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t7);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t6);
    t19 = *((unsigned int *)t7);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB65;

LAB62:    if (t20 != 0)
        goto LAB64;

LAB63:    *((unsigned int *)t8) = 1;

LAB65:    t10 = (t8 + 4);
    t26 = *((unsigned int *)t10);
    t27 = (~(t26));
    t28 = *((unsigned int *)t8);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB66;

LAB67:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng10)));
    memset(t8, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t5);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t7);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t6);
    t19 = *((unsigned int *)t7);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB75;

LAB72:    if (t20 != 0)
        goto LAB74;

LAB73:    *((unsigned int *)t8) = 1;

LAB75:    t10 = (t8 + 4);
    t26 = *((unsigned int *)t10);
    t27 = (~(t26));
    t28 = *((unsigned int *)t8);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB76;

LAB77:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng11)));
    memset(t8, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t5);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t7);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t6);
    t19 = *((unsigned int *)t7);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB83;

LAB80:    if (t20 != 0)
        goto LAB82;

LAB81:    *((unsigned int *)t8) = 1;

LAB83:    t10 = (t8 + 4);
    t26 = *((unsigned int *)t10);
    t27 = (~(t26));
    t28 = *((unsigned int *)t8);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB84;

LAB85:
LAB86:
LAB78:
LAB68:
LAB58:
LAB48:
LAB38:    goto LAB30;

LAB34:    t119 = (t104 + 4);
    *((unsigned int *)t104) = 1;
    *((unsigned int *)t119) = 1;
    goto LAB35;

LAB36:    xsi_set_current_line(61, ng0);

LAB39:    xsi_set_current_line(62, ng0);
    t126 = (t0 + 1528U);
    t127 = *((char **)t126);
    t126 = (t0 + 2568);
    t131 = (t0 + 2568);
    t132 = (t131 + 72U);
    t133 = *((char **)t132);
    t134 = ((char*)((ng4)));
    t135 = ((char*)((ng1)));
    xsi_vlog_convert_partindices(t128, t129, t130, ((int*)(t133)), 2, t134, 32, 1, t135, 32, 1);
    t136 = (t128 + 4);
    t137 = *((unsigned int *)t136);
    t138 = (!(t137));
    t139 = (t129 + 4);
    t140 = *((unsigned int *)t139);
    t141 = (!(t140));
    t142 = (t138 && t141);
    t143 = (t130 + 4);
    t144 = *((unsigned int *)t143);
    t145 = (!(t144));
    t146 = (t142 && t145);
    if (t146 == 1)
        goto LAB40;

LAB41:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t4, 3, t5, 32);
    t6 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t6, t8, 0, 0, 3, 0LL);
    goto LAB38;

LAB40:    t147 = *((unsigned int *)t130);
    t148 = (t147 + 0);
    t149 = *((unsigned int *)t128);
    t150 = *((unsigned int *)t129);
    t151 = (t149 - t150);
    t152 = (t151 + 1);
    xsi_vlogvar_wait_assign_value(t126, t127, t148, *((unsigned int *)t129), t152, 0LL);
    goto LAB41;

LAB44:    t9 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB45;

LAB46:    xsi_set_current_line(65, ng0);

LAB49:    xsi_set_current_line(66, ng0);
    t23 = (t0 + 1528U);
    t25 = *((char **)t23);
    memset(t24, 0, 8);
    t23 = (t24 + 4);
    t31 = (t25 + 4);
    t33 = *((unsigned int *)t25);
    t34 = (t33 >> 0);
    *((unsigned int *)t24) = t34;
    t35 = *((unsigned int *)t31);
    t41 = (t35 >> 0);
    *((unsigned int *)t23) = t41;
    t42 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t42 & 7U);
    t43 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t43 & 7U);
    t32 = (t0 + 2568);
    t36 = (t0 + 2568);
    t37 = (t36 + 72U);
    t39 = *((char **)t37);
    t40 = ((char*)((ng6)));
    t53 = ((char*)((ng7)));
    xsi_vlog_convert_partindices(t38, t54, t62, ((int*)(t39)), 2, t40, 32, 1, t53, 32, 1);
    t55 = (t38 + 4);
    t44 = *((unsigned int *)t55);
    t86 = (!(t44));
    t61 = (t54 + 4);
    t45 = *((unsigned int *)t61);
    t87 = (!(t45));
    t138 = (t86 && t87);
    t66 = (t62 + 4);
    t46 = *((unsigned int *)t66);
    t141 = (!(t46));
    t142 = (t138 && t141);
    if (t142 == 1)
        goto LAB50;

LAB51:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t4, 3, t5, 32);
    t6 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t6, t8, 0, 0, 3, 0LL);
    goto LAB48;

LAB50:    t47 = *((unsigned int *)t62);
    t145 = (t47 + 0);
    t48 = *((unsigned int *)t38);
    t49 = *((unsigned int *)t54);
    t146 = (t48 - t49);
    t148 = (t146 + 1);
    xsi_vlogvar_wait_assign_value(t32, t24, t145, *((unsigned int *)t54), t148, 0LL);
    goto LAB51;

LAB54:    t9 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB55;

LAB56:    xsi_set_current_line(69, ng0);

LAB59:    xsi_set_current_line(70, ng0);
    t23 = (t0 + 1528U);
    t25 = *((char **)t23);
    t23 = (t0 + 2728);
    t31 = (t0 + 2728);
    t32 = (t31 + 72U);
    t36 = *((char **)t32);
    t37 = ((char*)((ng4)));
    t39 = ((char*)((ng1)));
    xsi_vlog_convert_partindices(t24, t38, t54, ((int*)(t36)), 2, t37, 32, 1, t39, 32, 1);
    t40 = (t24 + 4);
    t33 = *((unsigned int *)t40);
    t86 = (!(t33));
    t53 = (t38 + 4);
    t34 = *((unsigned int *)t53);
    t87 = (!(t34));
    t138 = (t86 && t87);
    t55 = (t54 + 4);
    t35 = *((unsigned int *)t55);
    t141 = (!(t35));
    t142 = (t138 && t141);
    if (t142 == 1)
        goto LAB60;

LAB61:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t4, 3, t5, 32);
    t6 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t6, t8, 0, 0, 3, 0LL);
    goto LAB58;

LAB60:    t41 = *((unsigned int *)t54);
    t145 = (t41 + 0);
    t42 = *((unsigned int *)t24);
    t43 = *((unsigned int *)t38);
    t146 = (t42 - t43);
    t148 = (t146 + 1);
    xsi_vlogvar_wait_assign_value(t23, t25, t145, *((unsigned int *)t38), t148, 0LL);
    goto LAB61;

LAB64:    t9 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB65;

LAB66:    xsi_set_current_line(73, ng0);

LAB69:    xsi_set_current_line(74, ng0);
    t23 = (t0 + 1528U);
    t25 = *((char **)t23);
    memset(t24, 0, 8);
    t23 = (t24 + 4);
    t31 = (t25 + 4);
    t33 = *((unsigned int *)t25);
    t34 = (t33 >> 0);
    *((unsigned int *)t24) = t34;
    t35 = *((unsigned int *)t31);
    t41 = (t35 >> 0);
    *((unsigned int *)t23) = t41;
    t42 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t42 & 7U);
    t43 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t43 & 7U);
    t32 = (t0 + 2728);
    t36 = (t0 + 2728);
    t37 = (t36 + 72U);
    t39 = *((char **)t37);
    t40 = ((char*)((ng6)));
    t53 = ((char*)((ng7)));
    xsi_vlog_convert_partindices(t38, t54, t62, ((int*)(t39)), 2, t40, 32, 1, t53, 32, 1);
    t55 = (t38 + 4);
    t44 = *((unsigned int *)t55);
    t86 = (!(t44));
    t61 = (t54 + 4);
    t45 = *((unsigned int *)t61);
    t87 = (!(t45));
    t138 = (t86 && t87);
    t66 = (t62 + 4);
    t46 = *((unsigned int *)t66);
    t141 = (!(t46));
    t142 = (t138 && t141);
    if (t142 == 1)
        goto LAB70;

LAB71:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t4, 3, t5, 32);
    t6 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t6, t8, 0, 0, 3, 0LL);
    goto LAB68;

LAB70:    t47 = *((unsigned int *)t62);
    t145 = (t47 + 0);
    t48 = *((unsigned int *)t38);
    t49 = *((unsigned int *)t54);
    t146 = (t48 - t49);
    t148 = (t146 + 1);
    xsi_vlogvar_wait_assign_value(t32, t24, t145, *((unsigned int *)t54), t148, 0LL);
    goto LAB71;

LAB74:    t9 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB75;

LAB76:    xsi_set_current_line(77, ng0);

LAB79:    xsi_set_current_line(78, ng0);
    t23 = (t0 + 1528U);
    t25 = *((char **)t23);
    memset(t24, 0, 8);
    t23 = (t24 + 4);
    t31 = (t25 + 4);
    t33 = *((unsigned int *)t25);
    t34 = (t33 >> 0);
    t35 = (t34 & 1);
    *((unsigned int *)t24) = t35;
    t41 = *((unsigned int *)t31);
    t42 = (t41 >> 0);
    t43 = (t42 & 1);
    *((unsigned int *)t23) = t43;
    t32 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t32, t24, 0, 0, 1, 0LL);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t4, 3, t5, 32);
    t6 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t6, t8, 0, 0, 3, 0LL);
    goto LAB78;

LAB82:    t9 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB83;

LAB84:    xsi_set_current_line(81, ng0);

LAB87:    xsi_set_current_line(82, ng0);
    t23 = ((char*)((ng3)));
    t25 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t25, t23, 0, 0, 3, 0LL);
    goto LAB86;

}

static void Cont_96_1(char *t0)
{
    char t3[8];
    char t5[8];
    char t13[8];
    char t27[8];
    char t35[8];
    char t43[8];
    char *t1;
    char *t2;
    char *t4;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    int t67;
    int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;
    char *t82;
    char *t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    char *t92;
    char *t93;
    char *t94;
    char *t95;
    char *t96;
    unsigned int t97;
    unsigned int t98;
    char *t99;
    unsigned int t100;
    unsigned int t101;
    char *t102;
    unsigned int t103;
    unsigned int t104;
    char *t105;

LAB0:    t1 = (t0 + 4368U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 2008U);
    t4 = *((char **)t2);
    memset(t5, 0, 8);
    t2 = (t5 + 4);
    t6 = (t4 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (t7 >> 5);
    t9 = (t8 & 1);
    *((unsigned int *)t5) = t9;
    t10 = *((unsigned int *)t6);
    t11 = (t10 >> 5);
    t12 = (t11 & 1);
    *((unsigned int *)t2) = t12;
    memset(t13, 0, 8);
    t14 = (t5 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t5);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t14) != 0)
        goto LAB6;

LAB7:    t21 = (t13 + 4);
    t22 = *((unsigned int *)t13);
    t23 = *((unsigned int *)t21);
    t24 = (t22 || t23);
    if (t24 > 0)
        goto LAB8;

LAB9:    memcpy(t43, t13, 8);

LAB10:    memset(t3, 0, 8);
    t75 = (t43 + 4);
    t76 = *((unsigned int *)t75);
    t77 = (~(t76));
    t78 = *((unsigned int *)t43);
    t79 = (t78 & t77);
    t80 = (t79 & 1U);
    if (t80 != 0)
        goto LAB21;

LAB19:    if (*((unsigned int *)t75) == 0)
        goto LAB18;

LAB20:    t81 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t81) = 1;

LAB21:    t82 = (t3 + 4);
    t83 = (t43 + 4);
    t84 = *((unsigned int *)t43);
    t85 = (~(t84));
    *((unsigned int *)t3) = t85;
    *((unsigned int *)t82) = 0;
    if (*((unsigned int *)t83) != 0)
        goto LAB23;

LAB22:    t90 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t90 & 1U);
    t91 = *((unsigned int *)t82);
    *((unsigned int *)t82) = (t91 & 1U);
    t92 = (t0 + 4784);
    t93 = (t92 + 56U);
    t94 = *((char **)t93);
    t95 = (t94 + 56U);
    t96 = *((char **)t95);
    memset(t96, 0, 8);
    t97 = 1U;
    t98 = t97;
    t99 = (t3 + 4);
    t100 = *((unsigned int *)t3);
    t97 = (t97 & t100);
    t101 = *((unsigned int *)t99);
    t98 = (t98 & t101);
    t102 = (t96 + 4);
    t103 = *((unsigned int *)t96);
    *((unsigned int *)t96) = (t103 | t97);
    t104 = *((unsigned int *)t102);
    *((unsigned int *)t102) = (t104 | t98);
    xsi_driver_vfirst_trans(t92, 0, 0);
    t105 = (t0 + 4704);
    *((int *)t105) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t13) = 1;
    goto LAB7;

LAB6:    t20 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB7;

LAB8:    t25 = (t0 + 2008U);
    t26 = *((char **)t25);
    memset(t27, 0, 8);
    t25 = (t27 + 4);
    t28 = (t26 + 4);
    t29 = *((unsigned int *)t26);
    t30 = (t29 >> 6);
    t31 = (t30 & 1);
    *((unsigned int *)t27) = t31;
    t32 = *((unsigned int *)t28);
    t33 = (t32 >> 6);
    t34 = (t33 & 1);
    *((unsigned int *)t25) = t34;
    memset(t35, 0, 8);
    t36 = (t27 + 4);
    t37 = *((unsigned int *)t36);
    t38 = (~(t37));
    t39 = *((unsigned int *)t27);
    t40 = (t39 & t38);
    t41 = (t40 & 1U);
    if (t41 != 0)
        goto LAB11;

LAB12:    if (*((unsigned int *)t36) != 0)
        goto LAB13;

LAB14:    t44 = *((unsigned int *)t13);
    t45 = *((unsigned int *)t35);
    t46 = (t44 & t45);
    *((unsigned int *)t43) = t46;
    t47 = (t13 + 4);
    t48 = (t35 + 4);
    t49 = (t43 + 4);
    t50 = *((unsigned int *)t47);
    t51 = *((unsigned int *)t48);
    t52 = (t50 | t51);
    *((unsigned int *)t49) = t52;
    t53 = *((unsigned int *)t49);
    t54 = (t53 != 0);
    if (t54 == 1)
        goto LAB15;

LAB16:
LAB17:    goto LAB10;

LAB11:    *((unsigned int *)t35) = 1;
    goto LAB14;

LAB13:    t42 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t42) = 1;
    goto LAB14;

LAB15:    t55 = *((unsigned int *)t43);
    t56 = *((unsigned int *)t49);
    *((unsigned int *)t43) = (t55 | t56);
    t57 = (t13 + 4);
    t58 = (t35 + 4);
    t59 = *((unsigned int *)t13);
    t60 = (~(t59));
    t61 = *((unsigned int *)t57);
    t62 = (~(t61));
    t63 = *((unsigned int *)t35);
    t64 = (~(t63));
    t65 = *((unsigned int *)t58);
    t66 = (~(t65));
    t67 = (t60 & t62);
    t68 = (t64 & t66);
    t69 = (~(t67));
    t70 = (~(t68));
    t71 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t71 & t69);
    t72 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t72 & t70);
    t73 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t73 & t69);
    t74 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t74 & t70);
    goto LAB17;

LAB18:    *((unsigned int *)t3) = 1;
    goto LAB21;

LAB23:    t86 = *((unsigned int *)t3);
    t87 = *((unsigned int *)t83);
    *((unsigned int *)t3) = (t86 | t87);
    t88 = *((unsigned int *)t82);
    t89 = *((unsigned int *)t83);
    *((unsigned int *)t82) = (t88 | t89);
    goto LAB22;

}


extern void work_m_10898556396441297152_0168674489_init()
{
	static char *pe[] = {(void *)Always_59_0,(void *)Cont_96_1};
	xsi_register_didat("work_m_10898556396441297152_0168674489", "isim/seven_bit_adder_isim_beh.exe.sim/work/m_10898556396441297152_0168674489.didat");
	xsi_register_executes(pe);
}
