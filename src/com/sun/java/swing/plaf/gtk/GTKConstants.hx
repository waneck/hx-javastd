package com.sun.java.swing.plaf.gtk;
/*
* Copyright (c) 2002, 2005, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
/**
* @author Scott Violet
*/
extern interface GTKConstants
{
	
}
/**
* Java representation of native GtkIconSize enum
*/
@:native('com$sun$java$swing$plaf$gtk$GTKConstants$IconSize') extern enum GTKConstants_IconSize
{
	INVALID;
	MENU;
	SMALL_TOOLBAR;
	LARGE_TOOLBAR;
	BUTTON;
	DND;
	DIALOG;
	
}

/**
* Java representation of native GtkTextDirection enum
*/
@:native('com$sun$java$swing$plaf$gtk$GTKConstants$TextDirection') extern enum GTKConstants_TextDirection
{
	NONE;
	LTR;
	RTL;
	
}

/**
* Java representation of native GtkShadowType enum
*/
@:native('com$sun$java$swing$plaf$gtk$GTKConstants$ShadowType') extern enum GTKConstants_ShadowType
{
	NONE;
	IN;
	OUT;
	ETCHED_IN;
	ETCHED_OUT;
	
}

/**
* Java representation of native GtkStateType enum
*/
@:native('com$sun$java$swing$plaf$gtk$GTKConstants$StateType') extern enum GTKConstants_StateType
{
	NORMAL;
	ACTIVE;
	PRELIGHT;
	SELECTED;
	INSENSITIVE;
	
}

/**
* Java representation of native GtkExpanderStyle enum
*/
@:native('com$sun$java$swing$plaf$gtk$GTKConstants$ExpanderStyle') extern enum GTKConstants_ExpanderStyle
{
	COLLAPSED;
	SEMI_COLLAPSED;
	SEMI_EXPANDED;
	EXPANDED;
	
}

/**
* Java representation of native GtkPositionType enum
*/
@:native('com$sun$java$swing$plaf$gtk$GTKConstants$PositionType') extern enum GTKConstants_PositionType
{
	LEFT;
	RIGHT;
	TOP;
	BOTTOM;
	
}

/**
* Java representation of native GtkArrowType enum
*/
@:native('com$sun$java$swing$plaf$gtk$GTKConstants$ArrowType') extern enum GTKConstants_ArrowType
{
	UP;
	DOWN;
	LEFT;
	RIGHT;
	
}

/**
* Java representation of native GtkOrientation enum
*/
@:native('com$sun$java$swing$plaf$gtk$GTKConstants$Orientation') extern enum GTKConstants_Orientation
{
	HORIZONTAL;
	VERTICAL;
	
}

