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
extern class XProtocolConstants
{
	/* Reply codes */
	public static var X_Reply(default, null) : Int;
	
	/* Normal reply */
	public static var X_Error(default, null) : Int;
	
	/* Request codes */
	public static var X_CreateWindow(default, null) : Int;
	
	public static var X_ChangeWindowAttributes(default, null) : Int;
	
	public static var X_GetWindowAttributes(default, null) : Int;
	
	public static var X_DestroyWindow(default, null) : Int;
	
	public static var X_DestroySubwindows(default, null) : Int;
	
	public static var X_ChangeSaveSet(default, null) : Int;
	
	public static var X_ReparentWindow(default, null) : Int;
	
	public static var X_MapWindow(default, null) : Int;
	
	public static var X_MapSubwindows(default, null) : Int;
	
	public static var X_UnmapWindow(default, null) : Int;
	
	public static var X_UnmapSubwindows(default, null) : Int;
	
	public static var X_ConfigureWindow(default, null) : Int;
	
	public static var X_CirculateWindow(default, null) : Int;
	
	public static var X_GetGeometry(default, null) : Int;
	
	public static var X_QueryTree(default, null) : Int;
	
	public static var X_InternAtom(default, null) : Int;
	
	public static var X_GetAtomName(default, null) : Int;
	
	public static var X_ChangeProperty(default, null) : Int;
	
	public static var X_DeleteProperty(default, null) : Int;
	
	public static var X_GetProperty(default, null) : Int;
	
	public static var X_ListProperties(default, null) : Int;
	
	public static var X_SetSelectionOwner(default, null) : Int;
	
	public static var X_GetSelectionOwner(default, null) : Int;
	
	public static var X_ConvertSelection(default, null) : Int;
	
	public static var X_SendEvent(default, null) : Int;
	
	public static var X_GrabPointer(default, null) : Int;
	
	public static var X_UngrabPointer(default, null) : Int;
	
	public static var X_GrabButton(default, null) : Int;
	
	public static var X_UngrabButton(default, null) : Int;
	
	public static var X_ChangeActivePointerGrab(default, null) : Int;
	
	public static var X_GrabKeyboard(default, null) : Int;
	
	public static var X_UngrabKeyboard(default, null) : Int;
	
	public static var X_GrabKey(default, null) : Int;
	
	public static var X_UngrabKey(default, null) : Int;
	
	public static var X_AllowEvents(default, null) : Int;
	
	public static var X_GrabServer(default, null) : Int;
	
	public static var X_UngrabServer(default, null) : Int;
	
	public static var X_QueryPointer(default, null) : Int;
	
	public static var X_GetMotionEvents(default, null) : Int;
	
	public static var X_TranslateCoords(default, null) : Int;
	
	public static var X_WarpPointer(default, null) : Int;
	
	public static var X_SetInputFocus(default, null) : Int;
	
	public static var X_GetInputFocus(default, null) : Int;
	
	public static var X_QueryKeymap(default, null) : Int;
	
	public static var X_OpenFont(default, null) : Int;
	
	public static var X_CloseFont(default, null) : Int;
	
	public static var X_QueryFont(default, null) : Int;
	
	public static var X_QueryTextExtents(default, null) : Int;
	
	public static var X_ListFonts(default, null) : Int;
	
	public static var X_ListFontsWithInfo(default, null) : Int;
	
	public static var X_SetFontPath(default, null) : Int;
	
	public static var X_GetFontPath(default, null) : Int;
	
	public static var X_CreatePixmap(default, null) : Int;
	
	public static var X_FreePixmap(default, null) : Int;
	
	public static var X_CreateGC(default, null) : Int;
	
	public static var X_ChangeGC(default, null) : Int;
	
	public static var X_CopyGC(default, null) : Int;
	
	public static var X_SetDashes(default, null) : Int;
	
	public static var X_SetClipRectangles(default, null) : Int;
	
	public static var X_FreeGC(default, null) : Int;
	
	public static var X_ClearArea(default, null) : Int;
	
	public static var X_CopyArea(default, null) : Int;
	
	public static var X_CopyPlane(default, null) : Int;
	
	public static var X_PolyPoint(default, null) : Int;
	
	public static var X_PolyLine(default, null) : Int;
	
	public static var X_PolySegment(default, null) : Int;
	
	public static var X_PolyRectangle(default, null) : Int;
	
	public static var X_PolyArc(default, null) : Int;
	
	public static var X_FillPoly(default, null) : Int;
	
	public static var X_PolyFillRectangle(default, null) : Int;
	
	public static var X_PolyFillArc(default, null) : Int;
	
	public static var X_PutImage(default, null) : Int;
	
	public static var X_GetImage(default, null) : Int;
	
	public static var X_PolyText8(default, null) : Int;
	
	public static var X_PolyText16(default, null) : Int;
	
	public static var X_ImageText8(default, null) : Int;
	
	public static var X_ImageText16(default, null) : Int;
	
	public static var X_CreateColormap(default, null) : Int;
	
	public static var X_FreeColormap(default, null) : Int;
	
	public static var X_CopyColormapAndFree(default, null) : Int;
	
	public static var X_InstallColormap(default, null) : Int;
	
	public static var X_UninstallColormap(default, null) : Int;
	
	public static var X_ListInstalledColormaps(default, null) : Int;
	
	public static var X_AllocColor(default, null) : Int;
	
	public static var X_AllocNamedColor(default, null) : Int;
	
	public static var X_AllocColorCells(default, null) : Int;
	
	public static var X_AllocColorPlanes(default, null) : Int;
	
	public static var X_FreeColors(default, null) : Int;
	
	public static var X_StoreColors(default, null) : Int;
	
	public static var X_StoreNamedColor(default, null) : Int;
	
	public static var X_QueryColors(default, null) : Int;
	
	public static var X_LookupColor(default, null) : Int;
	
	public static var X_CreateCursor(default, null) : Int;
	
	public static var X_CreateGlyphCursor(default, null) : Int;
	
	public static var X_FreeCursor(default, null) : Int;
	
	public static var X_RecolorCursor(default, null) : Int;
	
	public static var X_QueryBestSize(default, null) : Int;
	
	public static var X_QueryExtension(default, null) : Int;
	
	public static var X_ListExtensions(default, null) : Int;
	
	public static var X_ChangeKeyboardMapping(default, null) : Int;
	
	public static var X_GetKeyboardMapping(default, null) : Int;
	
	public static var X_ChangeKeyboardControl(default, null) : Int;
	
	public static var X_GetKeyboardControl(default, null) : Int;
	
	public static var X_Bell(default, null) : Int;
	
	public static var X_ChangePointerControl(default, null) : Int;
	
	public static var X_GetPointerControl(default, null) : Int;
	
	public static var X_SetScreenSaver(default, null) : Int;
	
	public static var X_GetScreenSaver(default, null) : Int;
	
	public static var X_ChangeHosts(default, null) : Int;
	
	public static var X_ListHosts(default, null) : Int;
	
	public static var X_SetAccessControl(default, null) : Int;
	
	public static var X_SetCloseDownMode(default, null) : Int;
	
	public static var X_KillClient(default, null) : Int;
	
	public static var X_RotateProperties(default, null) : Int;
	
	public static var X_ForceScreenSaver(default, null) : Int;
	
	public static var X_SetPointerMapping(default, null) : Int;
	
	public static var X_GetPointerMapping(default, null) : Int;
	
	public static var X_SetModifierMapping(default, null) : Int;
	
	public static var X_GetModifierMapping(default, null) : Int;
	
	public static var X_NoOperation(default, null) : Int;
	
	
}
