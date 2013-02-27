package com.sun.java.swing.plaf.windows;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
/*
* <p>These classes are designed to be used while the
* corresponding <code>LookAndFeel</code> class has been installed
* (<code>UIManager.setLookAndFeel(new <i>XXX</i>LookAndFeel())</code>).
* Using them while a different <code>LookAndFeel</code> is installed
* may produce unexpected results, including exceptions.
* Additionally, changing the <code>LookAndFeel</code>
* maintained by the <code>UIManager</code> without updating the
* corresponding <code>ComponentUI</code> of any
* <code>JComponent</code>s may also produce unexpected results,
* such as the wrong colors showing up, and is generally not
* encouraged.
*
*/
@:internal extern class TMSchema
{
	
}
/**
* An enumeration of the various Windows controls (also known as
* components, or top-level parts)
*/
@:native('com$sun$java$swing$plaf$windows$TMSchema$Control') extern enum TMSchema_Control
{
	BUTTON;
	COMBOBOX;
	EDIT;
	HEADER;
	LISTBOX;
	LISTVIEW;
	MENU;
	PROGRESS;
	REBAR;
	SCROLLBAR;
	SPIN;
	TAB;
	TOOLBAR;
	TRACKBAR;
	TREEVIEW;
	WINDOW;
	
}

/**
* An enumeration of the Windows compoent parts
*/
@:native('com$sun$java$swing$plaf$windows$TMSchema$Part') extern enum TMSchema_Part
{
	MENU;
	MP_BARBACKGROUND;
	MP_BARITEM;
	MP_POPUPBACKGROUND;
	MP_POPUPBORDERS;
	MP_POPUPCHECK;
	MP_POPUPCHECKBACKGROUND;
	MP_POPUPGUTTER;
	MP_POPUPITEM;
	MP_POPUPSEPARATOR;
	MP_POPUPSUBMENU;
	BP_PUSHBUTTON;
	BP_RADIOBUTTON;
	BP_CHECKBOX;
	BP_GROUPBOX;
	CP_COMBOBOX;
	CP_DROPDOWNBUTTON;
	CP_BACKGROUND;
	CP_TRANSPARENTBACKGROUND;
	CP_BORDER;
	CP_READONLY;
	CP_DROPDOWNBUTTONRIGHT;
	CP_DROPDOWNBUTTONLEFT;
	CP_CUEBANNER;
	EP_EDIT;
	EP_EDITTEXT;
	HP_HEADERITEM;
	HP_HEADERSORTARROW;
	LBP_LISTBOX;
	LVP_LISTVIEW;
	PP_PROGRESS;
	PP_BAR;
	PP_BARVERT;
	PP_CHUNK;
	PP_CHUNKVERT;
	RP_GRIPPER;
	RP_GRIPPERVERT;
	SBP_SCROLLBAR;
	SBP_ARROWBTN;
	SBP_THUMBBTNHORZ;
	SBP_THUMBBTNVERT;
	SBP_LOWERTRACKHORZ;
	SBP_UPPERTRACKHORZ;
	SBP_LOWERTRACKVERT;
	SBP_UPPERTRACKVERT;
	SBP_GRIPPERHORZ;
	SBP_GRIPPERVERT;
	SBP_SIZEBOX;
	SPNP_UP;
	SPNP_DOWN;
	TABP_TABITEM;
	TABP_TABITEMLEFTEDGE;
	TABP_TABITEMRIGHTEDGE;
	TABP_PANE;
	TP_TOOLBAR;
	TP_BUTTON;
	TP_SEPARATOR;
	TP_SEPARATORVERT;
	TKP_TRACK;
	TKP_TRACKVERT;
	TKP_THUMB;
	TKP_THUMBBOTTOM;
	TKP_THUMBTOP;
	TKP_THUMBVERT;
	TKP_THUMBLEFT;
	TKP_THUMBRIGHT;
	TKP_TICS;
	TKP_TICSVERT;
	TVP_TREEVIEW;
	TVP_GLYPH;
	WP_WINDOW;
	WP_CAPTION;
	WP_MINCAPTION;
	WP_MAXCAPTION;
	WP_FRAMELEFT;
	WP_FRAMERIGHT;
	WP_FRAMEBOTTOM;
	WP_SYSBUTTON;
	WP_MDISYSBUTTON;
	WP_MINBUTTON;
	WP_MDIMINBUTTON;
	WP_MAXBUTTON;
	WP_CLOSEBUTTON;
	WP_MDICLOSEBUTTON;
	WP_RESTOREBUTTON;
	WP_MDIRESTOREBUTTON;
	
}

/**
* An enumeration of the possible component states
*/
@:native('com$sun$java$swing$plaf$windows$TMSchema$State') extern enum TMSchema_State
{
	ACTIVE;
	ASSIST;
	BITMAP;
	CHECKED;
	CHECKEDDISABLED;
	CHECKEDHOT;
	CHECKEDNORMAL;
	CHECKEDPRESSED;
	CHECKMARKNORMAL;
	CHECKMARKDISABLED;
	BULLETNORMAL;
	BULLETDISABLED;
	CLOSED;
	DEFAULTED;
	DISABLED;
	DISABLEDHOT;
	DISABLEDPUSHED;
	DOWNDISABLED;
	DOWNHOT;
	DOWNNORMAL;
	DOWNPRESSED;
	FOCUSED;
	HOT;
	HOTCHECKED;
	ICONHOT;
	ICONNORMAL;
	ICONPRESSED;
	ICONSORTEDHOT;
	ICONSORTEDNORMAL;
	ICONSORTEDPRESSED;
	INACTIVE;
	INACTIVENORMAL;
	INACTIVEHOT;
	INACTIVEPUSHED;
	INACTIVEDISABLED;
	LEFTDISABLED;
	LEFTHOT;
	LEFTNORMAL;
	LEFTPRESSED;
	MIXEDDISABLED;
	MIXEDHOT;
	MIXEDNORMAL;
	MIXEDPRESSED;
	NORMAL;
	PRESSED;
	OPENED;
	PUSHED;
	READONLY;
	RIGHTDISABLED;
	RIGHTHOT;
	RIGHTNORMAL;
	RIGHTPRESSED;
	SELECTED;
	UNCHECKEDDISABLED;
	UNCHECKEDHOT;
	UNCHECKEDNORMAL;
	UNCHECKEDPRESSED;
	UPDISABLED;
	UPHOT;
	UPNORMAL;
	UPPRESSED;
	HOVER;
	UPHOVER;
	DOWNHOVER;
	LEFTHOVER;
	RIGHTHOVER;
	SORTEDDOWN;
	SORTEDHOT;
	SORTEDNORMAL;
	SORTEDPRESSED;
	SORTEDUP;
	
}

/**
* An enumeration of the possible component attributes and the
* corresponding value type
*/
@:native('com$sun$java$swing$plaf$windows$TMSchema$Prop') extern enum TMSchema_Prop
{
	COLOR;
	SIZE;
	FLATMENUS;
	BORDERONLY;
	IMAGECOUNT;
	BORDERSIZE;
	PROGRESSCHUNKSIZE;
	PROGRESSSPACESIZE;
	TEXTSHADOWOFFSET;
	NORMALSIZE;
	SIZINGMARGINS;
	CONTENTMARGINS;
	CAPTIONMARGINS;
	BORDERCOLOR;
	FILLCOLOR;
	TEXTCOLOR;
	TEXTSHADOWCOLOR;
	BGTYPE;
	TEXTSHADOWTYPE;
	TRANSITIONDURATIONS;
	
}

/**
* An enumeration of attribute values for some Props
*/
@:native('com$sun$java$swing$plaf$windows$TMSchema$TypeEnum') extern enum TMSchema_TypeEnum
{
	BT_IMAGEFILE;
	BT_BORDERFILL;
	TST_NONE;
	TST_SINGLE;
	TST_CONTINUOUS;
	
}

