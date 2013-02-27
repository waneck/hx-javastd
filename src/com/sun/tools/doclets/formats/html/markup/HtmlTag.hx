package com.sun.tools.doclets.formats.html.markup;
/*
* Copyright (c) 2010, Oracle and/or its affiliates. All rights reserved.
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
* Enum representing HTML tags.
*
* @author Bhavesh Patel
*/
extern enum HtmlTag
{
	A;
	BLOCKQUOTE;
	BODY;
	BR;
	CAPTION;
	CENTER;
	CODE;
	DD;
	DIV;
	DL;
	DT;
	EM;
	FONT;
	FRAME;
	FRAMESET;
	H1;
	H2;
	H3;
	H4;
	H5;
	H6;
	HEAD;
	HR;
	HTML;
	I;
	IMG;
	LI;
	LINK;
	MENU;
	META;
	NOFRAMES;
	NOSCRIPT;
	OL;
	P;
	PRE;
	SCRIPT;
	SMALL;
	SPAN;
	STRONG;
	TABLE;
	TBODY;
	TD;
	TH;
	TITLE;
	TR;
	TT;
	UL;
	
}

/**
* Enum representing the type of HTML element.
*/
@:native('com$sun$tools$doclets$formats$html$markup$HtmlTag$BlockType') privateextern enum HtmlTag_BlockType
{
	BLOCK;
	INLINE;
	OTHER;
	
}

/**
* Enum representing HTML end tag requirement.
*/
@:native('com$sun$tools$doclets$formats$html$markup$HtmlTag$EndTag') privateextern enum HtmlTag_EndTag
{
	END;
	NOEND;
	
}

/**
* Enum representing the type of HTML element.
*/
@:native('com$sun$tools$doclets$formats$html$markup$HtmlTag$BlockType') privateextern enum HtmlTag_BlockType
{
	BLOCK;
	INLINE;
	OTHER;
	
}

/**
* Enum representing HTML end tag requirement.
*/
@:native('com$sun$tools$doclets$formats$html$markup$HtmlTag$EndTag') privateextern enum HtmlTag_EndTag
{
	END;
	NOEND;
	
}

