package sun.security.krb5.internal.ccache;
/*
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
*
*  (C) Copyright IBM Corp. 1999 All Rights Reserved.
*  Copyright 1997 The Open Group Research Institute.  All rights reserved.
*/
/**
* Constants used by file-based credential cache classes.
*
* @author Yanni Zhang
*
*/
extern interface FileCCacheConstants
{
	/*
	* FCC version 2 contains type information for principals.  FCC
	* version 1 does not.
	*
	* FCC version 3 contains keyblock encryption type information, and is
	* architecture independent.  Previous versions are not. */
	public var KRB5_FCC_FVNO_1(default, null) : Int;
	
	public var KRB5_FCC_FVNO_2(default, null) : Int;
	
	public var KRB5_FCC_FVNO_3(default, null) : Int;
	
	public var KRB5_FCC_FVNO_4(default, null) : Int;
	
	public var FCC_TAG_DELTATIME(default, null) : Int;
	
	public var KRB5_NT_UNKNOWN(default, null) : Int;
	
	public var MAXNAMELENGTH(default, null) : Int;
	
	public var TKT_FLG_FORWARDABLE(default, null) : Int;
	
	public var TKT_FLG_FORWARDED(default, null) : Int;
	
	public var TKT_FLG_PROXIABLE(default, null) : Int;
	
	public var TKT_FLG_PROXY(default, null) : Int;
	
	public var TKT_FLG_MAY_POSTDATE(default, null) : Int;
	
	public var TKT_FLG_POSTDATED(default, null) : Int;
	
	public var TKT_FLG_INVALID(default, null) : Int;
	
	public var TKT_FLG_RENEWABLE(default, null) : Int;
	
	public var TKT_FLG_INITIAL(default, null) : Int;
	
	public var TKT_FLG_PRE_AUTH(default, null) : Int;
	
	public var TKT_FLG_HW_AUTH(default, null) : Int;
	
	
}
