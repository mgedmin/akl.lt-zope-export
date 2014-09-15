## Script (Python) "login"
##bind container=container
##bind context=context
##bind namespace=
##bind script=script
##bind subpath=traverse_subpath
##parameters=
##title=
##
r = ''
try:
    r = context.REQUEST.HTTP_REFERER
except:
    pass

if r == '':
    r = context.REQUEST.URL1


url = "https:%s" % (r.split(':', 2)[1])
redir = "https:%s/doLogin?url=%s" % (context.REQUEST.URL1.split(':', 2)[1],
                                     url)

context.REQUEST.RESPONSE.redirect(redir)
