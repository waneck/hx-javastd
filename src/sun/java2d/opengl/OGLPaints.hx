package sun.java2d.opengl;
/*
* Copyright (c) 2007, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class OGLPaints
{
	
}
/************************* GradientPaint support ****************************/
@:native('sun$java2d$opengl$OGLPaints$Gradient') @:internal extern class OGLPaints_Gradient extends sun.java2d.opengl.OGLPaints
{
	
}
/************************** TexturePaint support ****************************/
@:native('sun$java2d$opengl$OGLPaints$Texture') @:internal extern class OGLPaints_Texture extends sun.java2d.opengl.OGLPaints
{
	
}
/****************** Shared MultipleGradientPaint support ********************/
@:native('sun$java2d$opengl$OGLPaints$MultiGradient') @:internal extern class OGLPaints_MultiGradient extends sun.java2d.opengl.OGLPaints
{
	@:overload private function new() : Void;
	
	
}
/********************** LinearGradientPaint support *************************/
@:native('sun$java2d$opengl$OGLPaints$LinearGradient') @:internal extern class OGLPaints_LinearGradient extends sun.java2d.opengl.OGLPaints.OGLPaints_MultiGradient
{
	
}
/********************** RadialGradientPaint support *************************/
@:native('sun$java2d$opengl$OGLPaints$RadialGradient') @:internal extern class OGLPaints_RadialGradient extends sun.java2d.opengl.OGLPaints.OGLPaints_MultiGradient
{
	
}
