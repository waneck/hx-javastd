package javax.swing;
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
extern interface Painter<T>
{
	/**
	* <p>Renders to the given {@link java.awt.Graphics2D} object. Implementations
	* of this method <em>may</em> modify state on the <code>Graphics2D</code>, and are not
	* required to restore that state upon completion. In most cases, it is recommended
	* that the caller pass in a scratch graphics object. The <code>Graphics2D</code>
	* must never be null.</p>
	*
	* <p>State on the graphics object may be honored by the <code>paint</code> method,
	* but may not be. For instance, setting the antialiasing rendering hint on the
	* graphics may or may not be respected by the <code>Painter</code> implementation.</p>
	*
	* <p>The supplied object parameter acts as an optional configuration argument.
	* For example, it could be of type <code>Component</code>. A <code>Painter</code>
	* that expected it could then read state from that <code>Component</code> and
	* use the state for painting. For example, an implementation may read the
	* backgroundColor and use that.</p>
	*
	* <p>Generally, to enhance reusability, most standard <code>Painter</code>s ignore
	* this parameter. They can thus be reused in any context. The <code>object</code>
	* may be null. Implementations must not throw a NullPointerException if the object
	* parameter is null.</p>
	*
	* <p>Finally, the <code>width</code> and <code>height</code> arguments specify the
	* width and height that the <code>Painter</code> should paint into. More
	* specifically, the specified width and height instruct the painter that it should
	* paint fully within this width and height. Any specified clip on the
	* <code>g</code> param will further constrain the region.</p>
	*
	* <p>For example, suppose I have a <code>Painter</code> implementation that draws
	* a gradient. The gradient goes from white to black. It "stretches" to fill the
	* painted region. Thus, if I use this <code>Painter</code> to paint a 500 x 500
	* region, the far left would be black, the far right would be white, and a smooth
	* gradient would be painted between. I could then, without modification, reuse the
	* <code>Painter</code> to paint a region that is 20x20 in size. This region would
	* also be black on the left, white on the right, and a smooth gradient painted
	* between.</p>
	*
	* @param g The Graphics2D to render to. This must not be null.
	* @param object an optional configuration parameter. This may be null.
	* @param width width of the area to paint.
	* @param height height of the area to paint.
	*/
	@:overload public function paint(g : java.awt.Graphics2D, object : T, width : Int, height : Int) : Void;
	
	
}
