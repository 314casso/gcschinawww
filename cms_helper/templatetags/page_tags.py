# -*- coding: utf-8 -*-
from django import template
import datetime
from cms.models.pagemodel import Page
from django.template import loader
from django.template.context import Context

register = template.Library()
    
@register.simple_tag
def get_copyright():
    return u'© 1997—%s' % datetime.datetime.now().year

@register.filter()
def get_root_page_reverse_id(value):
    page = Page.objects.get(reverse_id=value)
    return page.get_root().reverse_id
    
@register.filter()
def human_lang(lang):
    mapper = {'en': u'English', 'ru': u'По-русски'}
    return mapper[lang]

