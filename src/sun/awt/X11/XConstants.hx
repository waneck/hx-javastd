package sun.awt.X11;
/*
* Copyright (c) 2003, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class XConstants
{
	@:public @:static @:final public static var X_PROTOCOL(default, null) : Int;
	
	/* current protocol version */
	@:public @:static @:final public static var X_PROTOCOL_REVISION(default, null) : Int;
	
	/*****************************************************************
	* RESERVED RESOURCE AND CONSTANT DEFINITIONS
	*****************************************************************/
	@:public @:static @:final public static var None(default, null) : haxe.Int64;
	
	/* background pixmap in CreateWindow and ChangeWindowAttributes */
	@:public @:static @:final public static var ParentRelative(default, null) : haxe.Int64;
	
	/* border pixmap in CreateWindow and ChangeWindowAttributes special
	* VisualID and special window class passed to CreateWindow */
	@:public @:static @:final public static var CopyFromParent(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var PointerWindow(default, null) : haxe.Int64;
	
	/* destination window in SendEvent */
	@:public @:static @:final public static var InputFocus(default, null) : haxe.Int64;
	
	/* destination window in SendEvent */
	@:public @:static @:final public static var PointerRoot(default, null) : haxe.Int64;
	
	/* focus window in SetInputFocus */
	@:public @:static @:final public static var AnyPropertyType(default, null) : haxe.Int64;
	
	/* special Atom, passed to GetProperty */
	@:public @:static @:final public static var AnyKey(default, null) : haxe.Int64;
	
	/* special Key Code, passed to GrabKey */
	@:public @:static @:final public static var AnyButton(default, null) : haxe.Int64;
	
	/* special Button Code, passed to GrabButton */
	@:public @:static @:final public static var AllTemporary(default, null) : haxe.Int64;
	
	/* special Resource ID passed to KillClient */
	@:public @:static @:final public static var CurrentTime(default, null) : haxe.Int64;
	
	/* special Time */
	@:public @:static @:final public static var NoSymbol(default, null) : haxe.Int64;
	
	/* Input Event Masks. Used as event-mask window attribute and as arguments
	to Grab requests.  Not to be confused with event names.  */
	@:public @:static @:final public static var NoEventMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var KeyPressMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var KeyReleaseMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var ButtonPressMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var ButtonReleaseMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var EnterWindowMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var LeaveWindowMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var PointerMotionMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var PointerMotionHintMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var Button1MotionMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var Button2MotionMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var Button3MotionMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var Button4MotionMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var Button5MotionMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var ButtonMotionMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var KeymapStateMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var ExposureMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var VisibilityChangeMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var StructureNotifyMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var ResizeRedirectMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var SubstructureNotifyMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var SubstructureRedirectMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var FocusChangeMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var PropertyChangeMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var ColormapChangeMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var OwnerGrabButtonMask(default, null) : haxe.Int64;
	
	/* Event names.  Used in "type" field in XEvent structures.  Not to be
	confused with event masks above.  They start from 2 because 0 and 1
	are reserved in the protocol for errors and replies. */
	@:public @:static @:final public static var KeyPress(default, null) : Int;
	
	@:public @:static @:final public static var KeyRelease(default, null) : Int;
	
	@:public @:static @:final public static var ButtonPress(default, null) : Int;
	
	@:public @:static @:final public static var ButtonRelease(default, null) : Int;
	
	@:public @:static @:final public static var MotionNotify(default, null) : Int;
	
	@:public @:static @:final public static var EnterNotify(default, null) : Int;
	
	@:public @:static @:final public static var LeaveNotify(default, null) : Int;
	
	@:public @:static @:final public static var FocusIn(default, null) : Int;
	
	@:public @:static @:final public static var FocusOut(default, null) : Int;
	
	@:public @:static @:final public static var KeymapNotify(default, null) : Int;
	
	@:public @:static @:final public static var Expose(default, null) : Int;
	
	@:public @:static @:final public static var GraphicsExpose(default, null) : Int;
	
	@:public @:static @:final public static var NoExpose(default, null) : Int;
	
	@:public @:static @:final public static var VisibilityNotify(default, null) : Int;
	
	@:public @:static @:final public static var CreateNotify(default, null) : Int;
	
	@:public @:static @:final public static var DestroyNotify(default, null) : Int;
	
	@:public @:static @:final public static var UnmapNotify(default, null) : Int;
	
	@:public @:static @:final public static var MapNotify(default, null) : Int;
	
	@:public @:static @:final public static var MapRequest(default, null) : Int;
	
	@:public @:static @:final public static var ReparentNotify(default, null) : Int;
	
	@:public @:static @:final public static var ConfigureNotify(default, null) : Int;
	
	@:public @:static @:final public static var ConfigureRequest(default, null) : Int;
	
	@:public @:static @:final public static var GravityNotify(default, null) : Int;
	
	@:public @:static @:final public static var ResizeRequest(default, null) : Int;
	
	@:public @:static @:final public static var CirculateNotify(default, null) : Int;
	
	@:public @:static @:final public static var CirculateRequest(default, null) : Int;
	
	@:public @:static @:final public static var PropertyNotify(default, null) : Int;
	
	@:public @:static @:final public static var SelectionClear(default, null) : Int;
	
	@:public @:static @:final public static var SelectionRequest(default, null) : Int;
	
	@:public @:static @:final public static var SelectionNotify(default, null) : Int;
	
	@:public @:static @:final public static var ColormapNotify(default, null) : Int;
	
	@:public @:static @:final public static var ClientMessage(default, null) : Int;
	
	@:public @:static @:final public static var MappingNotify(default, null) : Int;
	
	@:public @:static @:final public static var LASTEvent(default, null) : Int;
	
	/* Key masks. Used as modifiers to GrabButton and GrabKey, results of QueryPointer,
	state in various key-, mouse-, and button-related events. */
	@:public @:static @:final public static var ShiftMask(default, null) : Int;
	
	@:public @:static @:final public static var LockMask(default, null) : Int;
	
	@:public @:static @:final public static var ControlMask(default, null) : Int;
	
	@:public @:static @:final public static var Mod1Mask(default, null) : Int;
	
	@:public @:static @:final public static var Mod2Mask(default, null) : Int;
	
	@:public @:static @:final public static var Mod3Mask(default, null) : Int;
	
	@:public @:static @:final public static var Mod4Mask(default, null) : Int;
	
	@:public @:static @:final public static var Mod5Mask(default, null) : Int;
	
	/* modifier names.  Used to build a SetModifierMapping request or
	to read a GetModifierMapping request.  These correspond to the
	masks defined above. */
	@:public @:static @:final public static var ShiftMapIndex(default, null) : Int;
	
	@:public @:static @:final public static var LockMapIndex(default, null) : Int;
	
	@:public @:static @:final public static var ControlMapIndex(default, null) : Int;
	
	@:public @:static @:final public static var Mod1MapIndex(default, null) : Int;
	
	@:public @:static @:final public static var Mod2MapIndex(default, null) : Int;
	
	@:public @:static @:final public static var Mod3MapIndex(default, null) : Int;
	
	@:public @:static @:final public static var Mod4MapIndex(default, null) : Int;
	
	@:public @:static @:final public static var Mod5MapIndex(default, null) : Int;
	
	/* button masks.  Used in same manner as Key masks above. Not to be confused
	with button names below. */
	@:public @:static @:final public static var buttonsMask(default, null) : java.NativeArray<Int>;
	
	@:public @:static @:final public static var AnyModifier(default, null) : Int;
	
	/* button names. Used as arguments to GrabButton and as detail in ButtonPress
	and ButtonRelease events.  Not to be confused with button masks above.
	Note that 0 is already defined above as "AnyButton".  */
	@:public @:static @:final public static var buttons(default, null) : java.NativeArray<Int>;
	
	/* Notify modes */
	@:public @:static @:final public static var NotifyNormal(default, null) : Int;
	
	@:public @:static @:final public static var NotifyGrab(default, null) : Int;
	
	@:public @:static @:final public static var NotifyUngrab(default, null) : Int;
	
	@:public @:static @:final public static var NotifyWhileGrabbed(default, null) : Int;
	
	@:public @:static @:final public static var NotifyHint(default, null) : Int;
	
	/* Notify detail */
	@:public @:static @:final public static var NotifyAncestor(default, null) : Int;
	
	@:public @:static @:final public static var NotifyVirtual(default, null) : Int;
	
	@:public @:static @:final public static var NotifyInferior(default, null) : Int;
	
	@:public @:static @:final public static var NotifyNonlinear(default, null) : Int;
	
	@:public @:static @:final public static var NotifyNonlinearVirtual(default, null) : Int;
	
	@:public @:static @:final public static var NotifyPointer(default, null) : Int;
	
	@:public @:static @:final public static var NotifyPointerRoot(default, null) : Int;
	
	@:public @:static @:final public static var NotifyDetailNone(default, null) : Int;
	
	/* Visibility notify */
	@:public @:static @:final public static var VisibilityUnobscured(default, null) : Int;
	
	@:public @:static @:final public static var VisibilityPartiallyObscured(default, null) : Int;
	
	@:public @:static @:final public static var VisibilityFullyObscured(default, null) : Int;
	
	/* Circulation request */
	@:public @:static @:final public static var PlaceOnTop(default, null) : Int;
	
	@:public @:static @:final public static var PlaceOnBottom(default, null) : Int;
	
	/* protocol families */
	@:public @:static @:final public static var FamilyInternet(default, null) : Int;
	
	@:public @:static @:final public static var FamilyDECnet(default, null) : Int;
	
	@:public @:static @:final public static var FamilyChaos(default, null) : Int;
	
	/* Property notification */
	@:public @:static @:final public static var PropertyNewValue(default, null) : Int;
	
	@:public @:static @:final public static var PropertyDelete(default, null) : Int;
	
	/* Color Map notification */
	@:public @:static @:final public static var ColormapUninstalled(default, null) : Int;
	
	@:public @:static @:final public static var ColormapInstalled(default, null) : Int;
	
	/* GrabPointer, GrabButton, GrabKeyboard, GrabKey Modes */
	@:public @:static @:final public static var GrabModeSync(default, null) : Int;
	
	@:public @:static @:final public static var GrabModeAsync(default, null) : Int;
	
	/* GrabPointer, GrabKeyboard reply status */
	@:public @:static @:final public static var GrabSuccess(default, null) : Int;
	
	@:public @:static @:final public static var AlreadyGrabbed(default, null) : Int;
	
	@:public @:static @:final public static var GrabInvalidTime(default, null) : Int;
	
	@:public @:static @:final public static var GrabNotViewable(default, null) : Int;
	
	@:public @:static @:final public static var GrabFrozen(default, null) : Int;
	
	/* AllowEvents modes */
	@:public @:static @:final public static var AsyncPointer(default, null) : Int;
	
	@:public @:static @:final public static var SyncPointer(default, null) : Int;
	
	@:public @:static @:final public static var ReplayPointer(default, null) : Int;
	
	@:public @:static @:final public static var AsyncKeyboard(default, null) : Int;
	
	@:public @:static @:final public static var SyncKeyboard(default, null) : Int;
	
	@:public @:static @:final public static var ReplayKeyboard(default, null) : Int;
	
	@:public @:static @:final public static var AsyncBoth(default, null) : Int;
	
	@:public @:static @:final public static var SyncBoth(default, null) : Int;
	
	/* Used in SetInputFocus, GetInputFocus */
	@:public @:static @:final public static var RevertToNone(default, null) : Int;
	
	@:public @:static @:final public static var RevertToPointerRoot(default, null) : Int;
	
	@:public @:static @:final public static var RevertToParent(default, null) : Int;
	
	/* Used in XEventsQueued */
	@:public @:static @:final public static var QueuedAlready(default, null) : Int;
	
	@:public @:static @:final public static var QueuedAfterReading(default, null) : Int;
	
	@:public @:static @:final public static var QueuedAfterFlush(default, null) : Int;
	
	/*****************************************************************
	* ERROR CODES
	*****************************************************************/
	@:public @:static @:final public static var Success(default, null) : Int;
	
	/* everything's okay */
	@:public @:static @:final public static var BadRequest(default, null) : Int;
	
	/* bad request code */
	@:public @:static @:final public static var BadValue(default, null) : Int;
	
	/* int parameter out of range */
	@:public @:static @:final public static var BadWindow(default, null) : Int;
	
	/* parameter not a Window */
	@:public @:static @:final public static var BadPixmap(default, null) : Int;
	
	/* parameter not a Pixmap */
	@:public @:static @:final public static var BadAtom(default, null) : Int;
	
	/* parameter not an Atom */
	@:public @:static @:final public static var BadCursor(default, null) : Int;
	
	/* parameter not a Cursor */
	@:public @:static @:final public static var BadFont(default, null) : Int;
	
	/* parameter not a Font */
	@:public @:static @:final public static var BadMatch(default, null) : Int;
	
	/* parameter mismatch */
	@:public @:static @:final public static var BadDrawable(default, null) : Int;
	
	/* parameter not a Pixmap or Window */
	@:public @:static @:final public static var BadAccess(default, null) : Int;
	
	/* depending on context:
	- key/button already grabbed
	- attempt to free an illegal
	cmap entry
	- attempt to store into a read-only
	color map entry.
	- attempt to modify the access control
	list from other than the local host.
	*/
	@:public @:static @:final public static var BadAlloc(default, null) : Int;
	
	/* insufficient resources */
	@:public @:static @:final public static var BadColor(default, null) : Int;
	
	/* no such colormap */
	@:public @:static @:final public static var BadGC(default, null) : Int;
	
	/* parameter not a GC */
	@:public @:static @:final public static var BadIDChoice(default, null) : Int;
	
	/* choice not in range or already used */
	@:public @:static @:final public static var BadName(default, null) : Int;
	
	/* font or color name doesn't exist */
	@:public @:static @:final public static var BadLength(default, null) : Int;
	
	/* Request length incorrect */
	@:public @:static @:final public static var BadImplementation(default, null) : Int;
	
	/* server is defective */
	@:public @:static @:final public static var FirstExtensionError(default, null) : Int;
	
	@:public @:static @:final public static var LastExtensionError(default, null) : Int;
	
	/* Note that CopyFromParent is already defined as 0 above */
	@:public @:static @:final public static var InputOutput(default, null) : Int;
	
	@:public @:static @:final public static var InputOnly(default, null) : Int;
	
	/* Window attributes for CreateWindow and ChangeWindowAttributes */
	@:public @:static @:final public static var CWBackPixmap(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var CWBackPixel(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var CWBorderPixmap(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var CWBorderPixel(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var CWBitGravity(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var CWWinGravity(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var CWBackingStore(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var CWBackingPlanes(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var CWBackingPixel(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var CWOverrideRedirect(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var CWSaveUnder(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var CWEventMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var CWDontPropagate(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var CWColormap(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var CWCursor(default, null) : haxe.Int64;
	
	/* ConfigureWindow structure */
	@:public @:static @:final public static var CWX(default, null) : Int;
	
	@:public @:static @:final public static var CWY(default, null) : Int;
	
	@:public @:static @:final public static var CWWidth(default, null) : Int;
	
	@:public @:static @:final public static var CWHeight(default, null) : Int;
	
	@:public @:static @:final public static var CWBorderWidth(default, null) : Int;
	
	@:public @:static @:final public static var CWSibling(default, null) : Int;
	
	@:public @:static @:final public static var CWStackMode(default, null) : Int;
	
	/* Bit Gravity */
	@:public @:static @:final public static var ForgetGravity(default, null) : Int;
	
	@:public @:static @:final public static var NorthWestGravity(default, null) : Int;
	
	@:public @:static @:final public static var NorthGravity(default, null) : Int;
	
	@:public @:static @:final public static var NorthEastGravity(default, null) : Int;
	
	@:public @:static @:final public static var WestGravity(default, null) : Int;
	
	@:public @:static @:final public static var CenterGravity(default, null) : Int;
	
	@:public @:static @:final public static var EastGravity(default, null) : Int;
	
	@:public @:static @:final public static var SouthWestGravity(default, null) : Int;
	
	@:public @:static @:final public static var SouthGravity(default, null) : Int;
	
	@:public @:static @:final public static var SouthEastGravity(default, null) : Int;
	
	@:public @:static @:final public static var StaticGravity(default, null) : Int;
	
	/* Window gravity + bit gravity above */
	@:public @:static @:final public static var UnmapGravity(default, null) : Int;
	
	/* Used in CreateWindow for backing-store hint */
	@:public @:static @:final public static var NotUseful(default, null) : Int;
	
	@:public @:static @:final public static var WhenMapped(default, null) : Int;
	
	@:public @:static @:final public static var Always(default, null) : Int;
	
	/* Used in GetWindowAttributes reply */
	@:public @:static @:final public static var IsUnmapped(default, null) : Int;
	
	@:public @:static @:final public static var IsUnviewable(default, null) : Int;
	
	@:public @:static @:final public static var IsViewable(default, null) : Int;
	
	/* Used in ChangeSaveSet */
	@:public @:static @:final public static var SetModeInsert(default, null) : Int;
	
	@:public @:static @:final public static var SetModeDelete(default, null) : Int;
	
	/* Used in ChangeCloseDownMode */
	@:public @:static @:final public static var DestroyAll(default, null) : Int;
	
	@:public @:static @:final public static var RetainPermanent(default, null) : Int;
	
	@:public @:static @:final public static var RetainTemporary(default, null) : Int;
	
	/* Window stacking method (in configureWindow) */
	@:public @:static @:final public static var Above(default, null) : Int;
	
	@:public @:static @:final public static var Below(default, null) : Int;
	
	@:public @:static @:final public static var TopIf(default, null) : Int;
	
	@:public @:static @:final public static var BottomIf(default, null) : Int;
	
	@:public @:static @:final public static var Opposite(default, null) : Int;
	
	/* Circulation direction */
	@:public @:static @:final public static var RaiseLowest(default, null) : Int;
	
	@:public @:static @:final public static var LowerHighest(default, null) : Int;
	
	/* Property modes */
	@:public @:static @:final public static var PropModeReplace(default, null) : Int;
	
	@:public @:static @:final public static var PropModePrepend(default, null) : Int;
	
	@:public @:static @:final public static var PropModeAppend(default, null) : Int;
	
	/* graphics functions, as in GC.alu */
	@:public @:static @:final public static var GXclear(default, null) : Int;
	
	/* 0 */
	@:public @:static @:final public static var GXand(default, null) : Int;
	
	/* src AND dst */
	@:public @:static @:final public static var GXandReverse(default, null) : Int;
	
	/* src AND NOT dst */
	@:public @:static @:final public static var GXcopy(default, null) : Int;
	
	/* src */
	@:public @:static @:final public static var GXandInverted(default, null) : Int;
	
	/* NOT src AND dst */
	@:public @:static @:final public static var GXnoop(default, null) : Int;
	
	/* dst */
	@:public @:static @:final public static var GXxor(default, null) : Int;
	
	/* src XOR dst */
	@:public @:static @:final public static var GXor(default, null) : Int;
	
	/* src OR dst */
	@:public @:static @:final public static var GXnor(default, null) : Int;
	
	/* NOT src AND NOT dst */
	@:public @:static @:final public static var GXequiv(default, null) : Int;
	
	/* NOT src XOR dst */
	@:public @:static @:final public static var GXinvert(default, null) : Int;
	
	/* NOT dst */
	@:public @:static @:final public static var GXorReverse(default, null) : Int;
	
	/* src OR NOT dst */
	@:public @:static @:final public static var GXcopyInverted(default, null) : Int;
	
	/* NOT src */
	@:public @:static @:final public static var GXorInverted(default, null) : Int;
	
	/* NOT src OR dst */
	@:public @:static @:final public static var GXnand(default, null) : Int;
	
	/* NOT src OR NOT dst */
	@:public @:static @:final public static var GXset(default, null) : Int;
	
	/* LineStyle */
	@:public @:static @:final public static var LineSolid(default, null) : Int;
	
	@:public @:static @:final public static var LineOnOffDash(default, null) : Int;
	
	@:public @:static @:final public static var LineDoubleDash(default, null) : Int;
	
	/* capStyle */
	@:public @:static @:final public static var CapNotLast(default, null) : Int;
	
	@:public @:static @:final public static var CapButt(default, null) : Int;
	
	@:public @:static @:final public static var CapRound(default, null) : Int;
	
	@:public @:static @:final public static var CapProjecting(default, null) : Int;
	
	/* joinStyle */
	@:public @:static @:final public static var JoinMiter(default, null) : Int;
	
	@:public @:static @:final public static var JoinRound(default, null) : Int;
	
	@:public @:static @:final public static var JoinBevel(default, null) : Int;
	
	/* fillStyle */
	@:public @:static @:final public static var FillSolid(default, null) : Int;
	
	@:public @:static @:final public static var FillTiled(default, null) : Int;
	
	@:public @:static @:final public static var FillStippled(default, null) : Int;
	
	@:public @:static @:final public static var FillOpaqueStippled(default, null) : Int;
	
	/* fillRule */
	@:public @:static @:final public static var EvenOddRule(default, null) : Int;
	
	@:public @:static @:final public static var WindingRule(default, null) : Int;
	
	/* subwindow mode */
	@:public @:static @:final public static var ClipByChildren(default, null) : Int;
	
	@:public @:static @:final public static var IncludeInferiors(default, null) : Int;
	
	/* SetClipRectangles ordering */
	@:public @:static @:final public static var Unsorted(default, null) : Int;
	
	@:public @:static @:final public static var YSorted(default, null) : Int;
	
	@:public @:static @:final public static var YXSorted(default, null) : Int;
	
	@:public @:static @:final public static var YXBanded(default, null) : Int;
	
	/* CoordinateMode for drawing routines */
	@:public @:static @:final public static var CoordModeOrigin(default, null) : Int;
	
	/* relative to the origin */
	@:public @:static @:final public static var CoordModePrevious(default, null) : Int;
	
	/* Polygon shapes */
	@:public @:static @:final public static var Complex(default, null) : Int;
	
	/* paths may intersect */
	@:public @:static @:final public static var Nonconvex(default, null) : Int;
	
	/* no paths intersect, but not convex */
	@:public @:static @:final public static var Convex(default, null) : Int;
	
	/* Arc modes for PolyFillArc */
	@:public @:static @:final public static var ArcChord(default, null) : Int;
	
	/* join endpoints of arc */
	@:public @:static @:final public static var ArcPieSlice(default, null) : Int;
	
	/* GC components: masks used in CreateGC, CopyGC, ChangeGC, OR'ed into
	GC.stateChanges */
	@:public @:static @:final public static var GCFunction(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var GCPlaneMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var GCForeground(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var GCBackground(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var GCLineWidth(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var GCLineStyle(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var GCCapStyle(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var GCJoinStyle(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var GCFillStyle(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var GCFillRule(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var GCTile(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var GCStipple(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var GCTileStipXOrigin(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var GCTileStipYOrigin(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var GCFont(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var GCSubwindowMode(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var GCGraphicsExposures(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var GCClipXOrigin(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var GCClipYOrigin(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var GCClipMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var GCDashOffset(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var GCDashList(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var GCArcMode(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var GCLastBit(default, null) : Int;
	
	/* used in QueryFont -- draw direction */
	@:public @:static @:final public static var FontLeftToRight(default, null) : Int;
	
	@:public @:static @:final public static var FontRightToLeft(default, null) : Int;
	
	@:public @:static @:final public static var FontChange(default, null) : Int;
	
	/* ImageFormat -- PutImage, GetImage */
	@:public @:static @:final public static var XYBitmap(default, null) : Int;
	
	/* depth 1, XYFormat */
	@:public @:static @:final public static var XYPixmap(default, null) : Int;
	
	/* depth == drawable depth */
	@:public @:static @:final public static var ZPixmap(default, null) : Int;
	
	/* For CreateColormap */
	@:public @:static @:final public static var AllocNone(default, null) : Int;
	
	/* create map with no entries */
	@:public @:static @:final public static var AllocAll(default, null) : Int;
	
	/* Flags used in StoreNamedColor, StoreColors */
	@:public @:static @:final public static var DoRed(default, null) : Int;
	
	@:public @:static @:final public static var DoGreen(default, null) : Int;
	
	@:public @:static @:final public static var DoBlue(default, null) : Int;
	
	/* QueryBestSize Class */
	@:public @:static @:final public static var CursorShape(default, null) : Int;
	
	/* largest size that can be displayed */
	@:public @:static @:final public static var TileShape(default, null) : Int;
	
	/* size tiled fastest */
	@:public @:static @:final public static var StippleShape(default, null) : Int;
	
	/*****************************************************************
	* KEYBOARD/POINTER STUFF
	*****************************************************************/
	@:public @:static @:final public static var AutoRepeatModeOff(default, null) : Int;
	
	@:public @:static @:final public static var AutoRepeatModeOn(default, null) : Int;
	
	@:public @:static @:final public static var AutoRepeatModeDefault(default, null) : Int;
	
	@:public @:static @:final public static var LedModeOff(default, null) : Int;
	
	@:public @:static @:final public static var LedModeOn(default, null) : Int;
	
	/* masks for ChangeKeyboardControl */
	@:public @:static @:final public static var KBKeyClickPercent(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var KBBellPercent(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var KBBellPitch(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var KBBellDuration(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var KBLed(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var KBLedMode(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var KBKey(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var KBAutoRepeatMode(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var MappingSuccess(default, null) : Int;
	
	@:public @:static @:final public static var MappingBusy(default, null) : Int;
	
	@:public @:static @:final public static var MappingFailed(default, null) : Int;
	
	@:public @:static @:final public static var MappingModifier(default, null) : Int;
	
	@:public @:static @:final public static var MappingKeyboard(default, null) : Int;
	
	@:public @:static @:final public static var MappingPointer(default, null) : Int;
	
	/*****************************************************************
	* SCREEN SAVER STUFF
	*****************************************************************/
	@:public @:static @:final public static var DontPreferBlanking(default, null) : Int;
	
	@:public @:static @:final public static var PreferBlanking(default, null) : Int;
	
	@:public @:static @:final public static var DefaultBlanking(default, null) : Int;
	
	@:public @:static @:final public static var DisableScreenSaver(default, null) : Int;
	
	@:public @:static @:final public static var DisableScreenInterval(default, null) : Int;
	
	@:public @:static @:final public static var DontAllowExposures(default, null) : Int;
	
	@:public @:static @:final public static var AllowExposures(default, null) : Int;
	
	@:public @:static @:final public static var DefaultExposures(default, null) : Int;
	
	/* for ForceScreenSaver */
	@:public @:static @:final public static var ScreenSaverReset(default, null) : Int;
	
	@:public @:static @:final public static var ScreenSaverActive(default, null) : Int;
	
	/* for ChangeHosts */
	@:public @:static @:final public static var HostInsert(default, null) : Int;
	
	@:public @:static @:final public static var HostDelete(default, null) : Int;
	
	/* for ChangeAccessControl */
	@:public @:static @:final public static var EnableAccess(default, null) : Int;
	
	@:public @:static @:final public static var DisableAccess(default, null) : Int;
	
	/* Display classes  used in opening the connection
	* Note that the statically allocated ones are even numbered and the
	* dynamically changeable ones are odd numbered */
	@:public @:static @:final public static var StaticGray(default, null) : Int;
	
	@:public @:static @:final public static var GrayScale(default, null) : Int;
	
	@:public @:static @:final public static var StaticColor(default, null) : Int;
	
	@:public @:static @:final public static var PseudoColor(default, null) : Int;
	
	@:public @:static @:final public static var TrueColor(default, null) : Int;
	
	@:public @:static @:final public static var DirectColor(default, null) : Int;
	
	/* Byte order  used in imageByteOrder and bitmapBitOrder */
	@:public @:static @:final public static var LSBFirst(default, null) : Int;
	
	@:public @:static @:final public static var MSBFirst(default, null) : Int;
	
	/* XKB support */
	@:public @:static @:final public static var XkbUseCoreKbd(default, null) : Int;
	
	@:public @:static @:final public static var XkbNewKeyboardNotify(default, null) : Int;
	
	@:public @:static @:final public static var XkbMapNotify(default, null) : Int;
	
	@:public @:static @:final public static var XkbStateNotify(default, null) : Int;
	
	@:public @:static @:final public static var XkbNewKeyboardNotifyMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var XkbMapNotifyMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var XkbStateNotifyMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var XkbGroupStateMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var XkbKeyTypesMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var XkbKeySymsMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var XkbModifierMapMask(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var XkbVirtualModsMask(default, null) : haxe.Int64;
	
	
}
