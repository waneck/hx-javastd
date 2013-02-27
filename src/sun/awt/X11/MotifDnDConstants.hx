package sun.awt.X11;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class MotifDnDConstants
{
	public static var MOTIF_DND_PROTOCOL_VERSION(default, null) : java.StdTypes.Int8;
	
	/* Supported protocol styles */
	public static var MOTIF_PREFER_PREREGISTER_STYLE(default, null) : Int;
	
	public static var MOTIF_PREFER_DYNAMIC_STYLE(default, null) : Int;
	
	public static var MOTIF_DYNAMIC_STYLE(default, null) : Int;
	
	public static var MOTIF_PREFER_RECEIVER_STYLE(default, null) : Int;
	
	/* Info structure sizes */
	public static var MOTIF_INITIATOR_INFO_SIZE(default, null) : Int;
	
	public static var MOTIF_RECEIVER_INFO_SIZE(default, null) : Int;
	
	/* Sender/reason message masks */
	public static var MOTIF_MESSAGE_REASON_MASK(default, null) : java.StdTypes.Int8;
	
	public static var MOTIF_MESSAGE_SENDER_MASK(default, null) : java.StdTypes.Int8;
	
	public static var MOTIF_MESSAGE_FROM_RECEIVER(default, null) : java.StdTypes.Int8;
	
	public static var MOTIF_MESSAGE_FROM_INITIATOR(default, null) : java.StdTypes.Int8;
	
	/* Message flags masks and shifts */
	public static var MOTIF_DND_ACTION_MASK(default, null) : Int;
	
	public static var MOTIF_DND_ACTION_SHIFT(default, null) : Int;
	
	public static var MOTIF_DND_STATUS_MASK(default, null) : Int;
	
	public static var MOTIF_DND_STATUS_SHIFT(default, null) : Int;
	
	public static var MOTIF_DND_ACTIONS_MASK(default, null) : Int;
	
	public static var MOTIF_DND_ACTIONS_SHIFT(default, null) : Int;
	
	/* message type constants */
	public static var TOP_LEVEL_ENTER(default, null) : java.StdTypes.Int8;
	
	public static var TOP_LEVEL_LEAVE(default, null) : java.StdTypes.Int8;
	
	public static var DRAG_MOTION(default, null) : java.StdTypes.Int8;
	
	public static var DROP_SITE_ENTER(default, null) : java.StdTypes.Int8;
	
	public static var DROP_SITE_LEAVE(default, null) : java.StdTypes.Int8;
	
	public static var DROP_START(default, null) : java.StdTypes.Int8;
	
	public static var DROP_FINISH(default, null) : java.StdTypes.Int8;
	
	public static var DRAG_DROP_FINISH(default, null) : java.StdTypes.Int8;
	
	public static var OPERATION_CHANGED(default, null) : java.StdTypes.Int8;
	
	/* drop action constants */
	public static var MOTIF_DND_NOOP(default, null) : Int;
	
	public static var MOTIF_DND_MOVE(default, null) : Int;
	
	public static var MOTIF_DND_COPY(default, null) : Int;
	
	public static var MOTIF_DND_LINK(default, null) : Int;
	
	/* drop site status constants */
	public static var MOTIF_NO_DROP_SITE(default, null) : java.StdTypes.Int8;
	
	public static var MOTIF_INVALID_DROP_SITE(default, null) : java.StdTypes.Int8;
	
	public static var MOTIF_VALID_DROP_SITE(default, null) : java.StdTypes.Int8;
	
	@:overload public static function getMotifActionsForJavaActions(javaActions : Int) : Int;
	
	@:overload public static function getJavaActionsForMotifActions(motifActions : Int) : Int;
	
	
}
@:native('sun$awt$X11$MotifDnDConstants$Swapper') extern class MotifDnDConstants_Swapper
{
	@:overload public static function swap(s : java.StdTypes.Int16) : java.StdTypes.Int16;
	
	@:overload public static function swap(i : Int) : Int;
	
	@:overload public static function getShort(data : haxe.Int64, order : java.StdTypes.Int8) : java.StdTypes.Int16;
	
	@:overload public static function getInt(data : haxe.Int64, order : java.StdTypes.Int8) : Int;
	
	
}
