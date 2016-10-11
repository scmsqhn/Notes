/*
 * Copyright (c) 2010-2011, The MiCode Open Source Community (www.micode.net)
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *        http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.changhong.youdao.notes.widget;

import android.appwidget.AppWidgetManager;
import android.content.Context;

import com.changhong.youdao.notes.R;
import com.changhong.youdao.notes.data.Notes;
import com.changhong.youdao.notes.tool.ResourceParser;


public class NoteWidgetProvider_2x extends NoteWidgetProvider {
    @Override
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] appWidgetIds) {
        super.update(context, appWidgetManager, appWidgetIds);
    }

    @Override
    protected int getLayoutId() {
        return R.layout.widget_2x;
    }

    @Override
    protected int getBgResourceId(int bgId) {
        return ResourceParser.WidgetBgResources.getWidget2xBgResource(bgId);
    }

    @Override
    protected int getWidgetType() {
        return Notes.TYPE_WIDGET_2X;
    }
}
