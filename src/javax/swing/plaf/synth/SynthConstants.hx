package javax.swing.plaf.synth;
/*
* Copyright (c) 2002, 2003, Oracle and/or its affiliates. All rights reserved.
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
* Constants used by Synth. Not all Components support all states. A
* Component will at least be in one of the primary states. That is, the
* return value from <code>SynthContext.getComponentState()</code> will at
* least be one of <code>ENABLED</code>, <code>MOUSE_OVER</code>,
* <code>PRESSED</code> or <code>DISABLED</code>, and may also contain
* <code>FOCUSED</code>, <code>SELECTED</code> or <code>DEFAULT</code>.
*
* @since 1.5
*/
@:require(java5) extern interface SynthConstants
{
	
}
