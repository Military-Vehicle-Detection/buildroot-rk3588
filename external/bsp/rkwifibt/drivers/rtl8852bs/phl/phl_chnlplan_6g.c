/******************************************************************************
 *
 * Copyright(c) 2020 Realtek Corporation.
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of version 2 of the GNU General Public License as
 * published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 *****************************************************************************/
#include "phl_headers.h"
#include "phl_chnlplan.h"
#include "phl_chnlplan_6g.h"

const struct chdef_6ghz chdef6g[MAX_CHDEF_6GHZ] = {
    {0, {0x00, 0x00, 0x00}, {0x00, 0x00, 0x00}, 0x00, 0x00, {0x00, 0x00, 0x00}, {0x00, 0x00, 0x00}, {0x00, 0x00}, {0x00, 0x00}},
    {1, {0xff, 0xff, 0xff}, {0x00, 0x00, 0x00}, 0x00, 0x00, {0x00, 0x00, 0x00}, {0x00, 0x00, 0x00}, {0x00, 0x00}, {0x00, 0x00}}, 
    {2, {0x00, 0x00, 0x00}, {0x00, 0x00, 0x00}, 0x3f, 0x00, {0x00, 0x00, 0x00}, {0x00, 0x00, 0x00}, {0x00, 0x00}, {0x00, 0x00}}, 
    {3, {0x00, 0x00, 0x00}, {0x00, 0x00, 0x00}, 0x00, 0x00, {0xff, 0xff, 0x03}, {0x00, 0x00, 0x00}, {0x00, 0x00}, {0x00, 0x00}}, 
    {4, {0x00, 0x00, 0x00}, {0x00, 0x00, 0x00}, 0x00, 0x00, {0x00, 0x00, 0x00}, {0x00, 0x00, 0x00}, {0xff, 0x07}, {0x00, 0x00}}, 
    {5, {0xff, 0xff, 0xff}, {0xff, 0xff, 0xff}, 0x3f, 0x3f, {0xff, 0xff, 0x03}, {0xff, 0xff, 0x03}, {0xff, 0x07}, {0xff, 0x07}}, 
};

const struct regulatory_domain_mapping_6g rdmap6[MAX_RD_MAP_NUM_6GHZ] = {
    {0x00, REGULATION_NA, 0},
    {0x01, REGULATION_FCC, 1},
    {0x02, REGULATION_FCC, 2},
    {0x03, REGULATION_FCC, 3},
    {0x04, REGULATION_FCC, 4},
    {0x7f, REGULATION_WW, 5},
};



