Return-Path: <davidchristy520@gmail.com>
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
 by inbound-smtp.us-west-2.amazonaws.com with SMTP id 8p0kbda0e13ve46erdg6rlightn2qq25c2njo0g1
 for house.search@tucsonbudgetclasses.org;
 Sun, 27 Mar 2022 10:22:38 +0000 (UTC)
X-SES-Spam-Verdict: PASS
X-SES-Virus-Verdict: PASS
Received-SPF: pass (spfCheck: domain of _spf.google.com designates 209.85.128.174 as permitted sender) client-ip=209.85.128.174; envelope-from=davidchristy520@gmail.com; helo=mail-yw1-f174.google.com;
Authentication-Results: amazonses.com;
 spf=pass (spfCheck: domain of _spf.google.com designates 209.85.128.174 as permitted sender) client-ip=209.85.128.174; envelope-from=davidchristy520@gmail.com; helo=mail-yw1-f174.google.com;
 dkim=pass header.i=@gmail.com;
 dmarc=pass header.from=gmail.com;
X-SES-RECEIPT: AEFBQUFBQUFBQUFFY1VZZVZqekpKd2pPcEFjZ0pYSDlGeVlidzJ2dCt4VUVLYnppN2tIOGVuS2kyU3hkbmpNYUZHdTV0eTJ2Q2d5aENUOXdWTFVKV3VaRkZReUdKQnpWWU9IeFBLRHZPUjN0YkpURTlmUXUrRm9ud3I2SUc5aXhvNGc5TlNiSFU0MEM5MTEwTlNWdlJ3R0NkczJ6alpJWnI3RExLQzlacE5LdjEvenFsTXZwbFE1cjNvQzhZeExvdUpXd29jYjRZOEVCUE51Z1FKdys0d1d3VmNtS1RCOE9OK0xMMTkrSkdaSTdMSkUvL0I4YURtcGh6b1dxcTV5aTJIeXdFREJSQk5UZlB4UGp1Tk5qQmdVUUFmeVBlTWpETmR3d3JaeGhJM3R3eC9wZVVOSXJISVE9PQ==
X-SES-DKIM-SIGNATURE: a=rsa-sha256; q=dns/txt; b=gQZHPxsrrEdyGR+QDxVP4CUscQ8y4Gi8r+bMnax+fT10TX1ictGgQ+Gwo/YOMFA88n69I9FAVvZ6GPMFg/BZeBRV8vnwl9JPfpsencIPmGemLIElWB9eM7B3qPZ8+6rO1UNVvaLwBgmJknqgBzUZ+cUdILu31z5T3KlqClZkSLE=; c=relaxed/simple; s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648376559; v=1; bh=EX3r7qijlazdGk8/xTMIMCQ7wfwxYThGhN9vUSx7G/A=; h=From:To:Cc:Bcc:Subject:Date:Message-ID:MIME-Version:Content-Type:X-SES-RECEIPT;
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-2e5e9025c20so121389907b3.7
        for <house.search@tucsonbudgetclasses.org>; Sun, 27 Mar 2022 03:22:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=2n4u1NeUk2ejyzqmTeA9JxCvLtK7cL6q/GvmPQQJYf8=;
        b=IgGktZAIRZmh/xYGuWX8MFmav+S9IzA7p+C5cAHgpoqhSC8sNlhpsE5Upx7BcwHsOm
         x58V5IXrTRLWvvVoVgghMYAC0puz0oPU9RL14czZn/IVINx96rYMJMbSt545WYMHdch8
         H9gHo1qVFefXfvy3A52NzR9C1q16gmmjnI9xi7Esb6dkEbX80m8pPeDYHIndrxAFjwwA
         Q/mlTiIbyWo94UHEj3gSWO1RSQlwaCyyc8ET3BKrUJHUwNCyKkvcGkTtdmiIPn0C5D8G
         iBDksfsIGAcRntOyec4tpXNnVqk7jcqp/qMmp956yzgmVXwA5CpZKl8/as10OOBiMFFm
         5vMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=2n4u1NeUk2ejyzqmTeA9JxCvLtK7cL6q/GvmPQQJYf8=;
        b=qxW83fJCBhM3Kdq3D4gJIvJUBHWkh2nn0rpWROtHeg6/blbu5WCU7G+IxRNGjNLgwN
         h01r2dDCcWD7wU2Zf3Baw8klCzPqzqr3pUZNHM47ieZnV14iqCtNPKLNSn9n4LEnnbHY
         agtNOQlsDkin6auAJ52nC1Qk77RH4mlpsTRwMq2JnCLRQqF9WyHdzr5m0WziVwlERWQf
         FvhYlZcJ9WnmeoYIk0auA7svoeilYU6DLW6g0BQQLbzq1DUUmE30Lhnw4gh09uR3uVQG
         VHd+iwcm9QJulF/b9UBpoFSexcLpFNSJYmo0aXOOkct5auU41plUn4LqU/+71CVGNY85
         jrZQ==
X-Gm-Message-State: AOAM5328p7oWeJ0c1gys3n5jVaVfklivB95OR6T4AXVuiLbEGMA08iIy
	4zYdqbs5W7VzlM218RfLstNL5/EiE7RkOd5miKOl7CJC
X-Google-Smtp-Source: ABdhPJxnJ0b6vkDT2UaHYYZpJSx6yLsJX/tg39BnCl/kqN16+Xf1qh4xgYDTTFu9sO1ygSKig/1AXJABIPDaKQSBB9g=
X-Received: by 2002:a81:180d:0:b0:2e5:ad03:4671 with SMTP id
 13-20020a81180d000000b002e5ad034671mr20392443ywy.288.1648376557205; Sun, 27
 Mar 2022 03:22:37 -0700 (PDT)
Received: from 927538837578 named unknown by gmailapi.google.com with
 HTTPREST; Sun, 27 Mar 2022 10:22:36 +0000
MIME-Version: 1.0
From: davidchristy520@gmail.com
Date: Sun, 27 Mar 2022 10:22:36 +0000
Message-ID: <CABvV4r9vFiTNzpkBNQWhUnqDjgu8KGNYrRvEQ-h7rQ+wQUzokg@mail.gmail.com>
Subject: Listings Updated!
To: house.search@tucsonbudgetclasses.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta content=3D"text/html; charset=3DUTF-8" http-equiv=3D"Content-Type=
" />
  </head>
  <body style=3D"font-family:Helvetica,Arial,sans-serif;">
<div style=3D"color:transparent;visibility:hidden;opacity:0;font-size:0px;b=
order:0;max-height:1px;width:1px;margin:0px;padding:0px;border-width:0px!im=
portant;display:none!important;line-height:0px!important;"><img
border=3D"0" width=3D"1" height=3D"1"
src=3D"http://t.flexmail.flexmls.com/q/x6sgQr8u-2-lNMsAaOtL9w~~/AAQYRwA~/Rg=
RkIr05PVcDc3BjQgpiPjk4QGIgw9kaUhlkYXZpZGNocmlzdHk1MjBAZ21haWwuY29tWAQAAAAA"
alt=3D""/></div>

    <div>




<div style=3D"color: #444; font-size:28px; line-height: 36px; margin-bottom=
:50px">
  Central Tucson - David
</div>


<table border=3D"0" cellpadding=3D"9" cellspacing=3D"0"
style=3D"border-top:1px solid #E0E0E0;border-bottom:1px solid #E0E0E0;">

  <tr valign=3D"top">
    <td style=3D"width:150px;height:118px;padding:9px;padding-top:23px;over=
flow:hidden;">
      <div style=3D"width:150px;height:100px;overflow:hidden;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220326222345969801000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d"><img
alt=3D"Listing Update" width=3D"150" style=3D"width:150px;max-height:100px;=
"
src=3D"http://cdn.photos.sparkplatform.com/tar/20220326222745032841000000.j=
pg"
/></a>
      </div>
    </td>
    <td style=3D"height:118px;overflow:hidden;">
      <div style=3D"font-size:19px;">
        <a style=3D"color:#000000;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220326222345969801000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">$744,=
000</a>
      </div>

        <div style=3D"color:#5c8cd7;font-size:18px;margin-top:3px;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220326222345969801000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">519
E 4Th Street</a>
        </div>

      <div style=3D"color:#a9a9a9;font-size:13px;font-weight:100;margin-top=
:2px;">
          Tucson, AZ 85705 &bull;
         #22207731
      </div>

      <div style=3D"color:#a9a9a9;margin-top:2px;font-size:13px;font-weight=
:100;">
        <span style=3D'color:#6db267;font-weight:normal;'>New Listing</span=
>
      </div>
    </td>
  </tr>


  <tr valign=3D"top">
    <td style=3D"width:150px;height:118px;padding:9px;padding-top:23px;over=
flow:hidden;border-top:1px
solid #E0E0E0;">
      <div style=3D"width:150px;height:100px;overflow:hidden;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220325135007082420000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d"><img
alt=3D"Listing Update" width=3D"150" style=3D"width:150px;max-height:100px;=
"
src=3D"http://cdn.photos.sparkplatform.com/tar/20220325135036892943000000.j=
pg"
/></a>
      </div>
    </td>
    <td style=3D"height:118px;overflow:hidden;border-top:1px solid #E0E0E0;=
">
      <div style=3D"font-size:19px;">
        <a style=3D"color:#000000;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220325135007082420000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">$380,=
000</a>
      </div>

        <div style=3D"color:#5c8cd7;font-size:18px;margin-top:3px;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220325135007082420000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">816
E Park Modern Drive</a>
        </div>

      <div style=3D"color:#a9a9a9;font-size:13px;font-weight:100;margin-top=
:2px;">
          Tucson, AZ 85719 &bull;
         #22207566
      </div>

      <div style=3D"color:#a9a9a9;margin-top:2px;font-size:13px;font-weight=
:100;">
        <span style=3D'color:#6db267;font-weight:normal;'>New Listing</span=
>
      </div>
    </td>
  </tr>


  <tr valign=3D"top">
    <td style=3D"width:150px;height:118px;padding:9px;padding-top:23px;over=
flow:hidden;border-top:1px
solid #E0E0E0;">
      <div style=3D"width:150px;height:100px;overflow:hidden;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220326175557301303000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d"><img
alt=3D"Listing Update" width=3D"150" style=3D"width:150px;max-height:100px;=
"
src=3D"http://cdn.photos.sparkplatform.com/tar/20220326192652983459000000.j=
pg"
/></a>
      </div>
    </td>
    <td style=3D"height:118px;overflow:hidden;border-top:1px solid #E0E0E0;=
">
      <div style=3D"font-size:19px;">
        <a style=3D"color:#000000;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220326175557301303000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">$375,=
000</a>
      </div>

        <div style=3D"color:#5c8cd7;font-size:18px;margin-top:3px;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220326175557301303000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">1019
N Sonoita Avenue</a>
        </div>

      <div style=3D"color:#a9a9a9;font-size:13px;font-weight:100;margin-top=
:2px;">
          Tucson, AZ 85711 &bull;
         #22207719
      </div>

      <div style=3D"color:#a9a9a9;margin-top:2px;font-size:13px;font-weight=
:100;">
        <span style=3D'color:#6db267;font-weight:normal;'>New Listing</span=
>
      </div>
    </td>
  </tr>


  <tr valign=3D"top">
    <td style=3D"width:150px;height:118px;padding:9px;padding-top:23px;over=
flow:hidden;border-top:1px
solid #E0E0E0;">
      <div style=3D"width:150px;height:100px;overflow:hidden;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220322064458365219000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d"><img
alt=3D"Listing Update" width=3D"150" style=3D"width:150px;max-height:100px;=
"
src=3D"http://cdn.photos.sparkplatform.com/tar/20220322072240461937000000.j=
pg"
/></a>
      </div>
    </td>
    <td style=3D"height:118px;overflow:hidden;border-top:1px solid #E0E0E0;=
">
      <div style=3D"font-size:19px;">
        <a style=3D"color:#6db267;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220322064458365219000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d"><img
src=3D'https://cdn.assets.flexmls.com/1.8.36/gabby/icon_listing_change_arro=
w_green.png'
style=3D'margin-right:8px' alt=3D''>$297,900</a>
      </div>

        <div style=3D"color:#5c8cd7;font-size:18px;margin-top:3px;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220322064458365219000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">865
E Park Modern Drive</a>
        </div>

      <div style=3D"color:#a9a9a9;font-size:13px;font-weight:100;margin-top=
:2px;">
          Tucson, AZ 85719 &bull;
         #22207512
      </div>

      <div style=3D"color:#a9a9a9;margin-top:2px;font-size:13px;font-weight=
:100;">
        Active
      </div>
    </td>
  </tr>


  <tr valign=3D"top">
    <td style=3D"width:150px;height:118px;padding:9px;padding-top:23px;over=
flow:hidden;border-top:1px
solid #E0E0E0;">
      <div style=3D"width:150px;height:100px;overflow:hidden;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220325223637525859000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d"><img
alt=3D"Listing Update" width=3D"150" style=3D"width:150px;max-height:100px;=
"
src=3D"http://cdn.photos.sparkplatform.com/tar/20220325223640238284000000.j=
pg"
/></a>
      </div>
    </td>
    <td style=3D"height:118px;overflow:hidden;border-top:1px solid #E0E0E0;=
">
      <div style=3D"font-size:19px;">
        <a style=3D"color:#000000;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220325223637525859000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">$825,=
000</a>
      </div>

        <div style=3D"color:#5c8cd7;font-size:18px;margin-top:3px;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220325223637525859000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">95
E Calle Resplendor</a>
        </div>

      <div style=3D"color:#a9a9a9;font-size:13px;font-weight:100;margin-top=
:2px;">
          Tucson, AZ 85716 &bull;
         #22207662
      </div>

      <div style=3D"color:#a9a9a9;margin-top:2px;font-size:13px;font-weight=
:100;">
        <span style=3D'color:#6db267;font-weight:normal;'>New Listing</span=
>
      </div>
    </td>
  </tr>


  <tr valign=3D"top">
    <td style=3D"width:150px;height:118px;padding:9px;padding-top:23px;over=
flow:hidden;border-top:1px
solid #E0E0E0;">
      <div style=3D"width:150px;height:100px;overflow:hidden;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220128182057184799000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d"><img
alt=3D"Listing Update" width=3D"150" style=3D"width:150px;max-height:100px;=
"
src=3D"http://cdn.photos.sparkplatform.com/tar/20220323202550023632000000.j=
pg"
/></a>
      </div>
    </td>
    <td style=3D"height:118px;overflow:hidden;border-top:1px solid #E0E0E0;=
">
      <div style=3D"font-size:19px;">
        <a style=3D"color:#000000;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220128182057184799000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">$299,=
000</a>
      </div>

        <div style=3D"color:#5c8cd7;font-size:18px;margin-top:3px;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220128182057184799000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">4071
E Flower Street</a>
        </div>

      <div style=3D"color:#a9a9a9;font-size:13px;font-weight:100;margin-top=
:2px;">
          Tucson, AZ 85712 &bull;
         #22207402
      </div>

      <div style=3D"color:#a9a9a9;margin-top:2px;font-size:13px;font-weight=
:100;">
        Active
      </div>
    </td>
  </tr>


  <tr valign=3D"top">
    <td style=3D"width:150px;height:118px;padding:9px;padding-top:23px;over=
flow:hidden;border-top:1px
solid #E0E0E0;">
      <div style=3D"width:150px;height:100px;overflow:hidden;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220317210444218710000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d"><img
alt=3D"Listing Update" width=3D"150" style=3D"width:150px;max-height:100px;=
"
src=3D"http://cdn.photos.sparkplatform.com/tar/20220317231511373029000000.j=
pg"
/></a>
      </div>
    </td>
    <td style=3D"height:118px;overflow:hidden;border-top:1px solid #E0E0E0;=
">
      <div style=3D"font-size:19px;">
        <a style=3D"color:#000000;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220317210444218710000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">$898,=
500</a>
      </div>

        <div style=3D"color:#5c8cd7;font-size:18px;margin-top:3px;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220317210444218710000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">1922
E Drachman Street</a>
        </div>

      <div style=3D"color:#a9a9a9;font-size:13px;font-weight:100;margin-top=
:2px;">
          Tucson, AZ 85719 &bull;
         #22207598
      </div>

      <div style=3D"color:#a9a9a9;margin-top:2px;font-size:13px;font-weight=
:100;">
        <span style=3D'color:#6db267;font-weight:normal;'>New Listing</span=
>
      </div>
    </td>
  </tr>


  <tr valign=3D"top">
    <td style=3D"width:150px;height:118px;padding:9px;padding-top:23px;over=
flow:hidden;border-top:1px
solid #E0E0E0;">
      <div style=3D"width:150px;height:100px;overflow:hidden;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220314233132520105000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d"><img
alt=3D"Listing Update" width=3D"150" style=3D"width:150px;max-height:100px;=
"
src=3D"http://cdn.photos.sparkplatform.com/tar/20220323171950455744000000.j=
pg"
/></a>
      </div>
    </td>
    <td style=3D"height:118px;overflow:hidden;border-top:1px solid #E0E0E0;=
">
      <div style=3D"font-size:19px;">
        <a style=3D"color:#000000;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220314233132520105000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">$399,=
000</a>
      </div>

        <div style=3D"color:#5c8cd7;font-size:18px;margin-top:3px;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220314233132520105000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">135
S Longfellow Avenue</a>
        </div>

      <div style=3D"color:#a9a9a9;font-size:13px;font-weight:100;margin-top=
:2px;">
          Tucson, AZ 85711 &bull;
         #22207558
      </div>

      <div style=3D"color:#a9a9a9;margin-top:2px;font-size:13px;font-weight=
:100;">
        <span style=3D'color:#6db267;font-weight:normal;'>New Listing</span=
>
      </div>
    </td>
  </tr>


  <tr valign=3D"top">
    <td style=3D"width:150px;height:118px;padding:9px;padding-top:23px;over=
flow:hidden;border-top:1px
solid #E0E0E0;">
      <div style=3D"width:150px;height:100px;overflow:hidden;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220310234946787318000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d"><img
alt=3D"Listing Update" width=3D"150" style=3D"width:150px;max-height:100px;=
"
src=3D"http://cdn.photos.sparkplatform.com/tar/20220311025144103969000000.j=
pg"
/></a>
      </div>
    </td>
    <td style=3D"height:118px;overflow:hidden;border-top:1px solid #E0E0E0;=
">
      <div style=3D"font-size:19px;">
        <a style=3D"color:#6db267;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220310234946787318000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d"><img
src=3D'https://cdn.assets.flexmls.com/1.8.36/gabby/icon_listing_change_arro=
w_green.png'
style=3D'margin-right:8px' alt=3D''>$795,000</a>
      </div>

        <div style=3D"color:#5c8cd7;font-size:18px;margin-top:3px;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220310234946787318000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">2601
E Linden Street</a>
        </div>

      <div style=3D"color:#a9a9a9;font-size:13px;font-weight:100;margin-top=
:2px;">
          Tucson, AZ 85716 &bull;
         #22206346
      </div>

      <div style=3D"color:#a9a9a9;margin-top:2px;font-size:13px;font-weight=
:100;">
        Active
      </div>
    </td>
  </tr>


  <tr valign=3D"top">
    <td style=3D"width:150px;height:118px;padding:9px;padding-top:23px;over=
flow:hidden;border-top:1px
solid #E0E0E0;">
      <div style=3D"width:150px;height:100px;overflow:hidden;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220322162011573598000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d"><img
alt=3D"Listing Update" width=3D"150" style=3D"width:150px;max-height:100px;=
"
src=3D"http://cdn.photos.sparkplatform.com/tar/20220322170543109480000000.j=
pg"
/></a>
      </div>
    </td>
    <td style=3D"height:118px;overflow:hidden;border-top:1px solid #E0E0E0;=
">
      <div style=3D"font-size:19px;">
        <a style=3D"color:#000000;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220322162011573598000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">$446,=
300</a>
      </div>

        <div style=3D"color:#5c8cd7;font-size:18px;margin-top:3px;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220322162011573598000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">2701
E Blacklidge Drive</a>
        </div>

      <div style=3D"color:#a9a9a9;font-size:13px;font-weight:100;margin-top=
:2px;">
          Tucson, AZ 85716 &bull;
         #22207315
      </div>

      <div style=3D"color:#a9a9a9;margin-top:2px;font-size:13px;font-weight=
:100;">
        Active
      </div>
    </td>
  </tr>


  <tr valign=3D"top">
    <td style=3D"width:150px;height:118px;padding:9px;padding-top:23px;over=
flow:hidden;border-top:1px
solid #E0E0E0;">
      <div style=3D"width:150px;height:100px;overflow:hidden;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20200722044726709610000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d"><img
alt=3D"Listing Update" width=3D"150" style=3D"width:150px;max-height:100px;=
"
src=3D"http://cdn.photos.sparkplatform.com/tar/20220324155340387611000000.j=
pg"
/></a>
      </div>
    </td>
    <td style=3D"height:118px;overflow:hidden;border-top:1px solid #E0E0E0;=
">
      <div style=3D"font-size:19px;">
        <a style=3D"color:#000000;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20200722044726709610000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">$435,=
000</a>
      </div>

        <div style=3D"color:#5c8cd7;font-size:18px;margin-top:3px;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20200722044726709610000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">2819
E Edison Street</a>
        </div>

      <div style=3D"color:#a9a9a9;font-size:13px;font-weight:100;margin-top=
:2px;">
          Tucson, AZ 85716 &bull;
         #22207541
      </div>

      <div style=3D"color:#a9a9a9;margin-top:2px;font-size:13px;font-weight=
:100;">
        <span style=3D'color:#6db267;font-weight:normal;'>New Listing</span=
>
      </div>
    </td>
  </tr>


  <tr valign=3D"top">
    <td style=3D"width:150px;height:118px;padding:9px;padding-top:23px;over=
flow:hidden;border-top:1px
solid #E0E0E0;">
      <div style=3D"width:150px;height:100px;overflow:hidden;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220322205043710786000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d"><img
alt=3D"Listing Update" width=3D"150" style=3D"width:150px;max-height:100px;=
"
src=3D"http://cdn.photos.sparkplatform.com/tar/20220322212202107929000000.j=
pg"
/></a>
      </div>
    </td>
    <td style=3D"height:118px;overflow:hidden;border-top:1px solid #E0E0E0;=
">
      <div style=3D"font-size:19px;">
        <a style=3D"color:#000000;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220322205043710786000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">$725,=
000</a>
      </div>

        <div style=3D"color:#5c8cd7;font-size:18px;margin-top:3px;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220322205043710786000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">1935
E 4Th Street</a>
        </div>

      <div style=3D"color:#a9a9a9;font-size:13px;font-weight:100;margin-top=
:2px;">
          Tucson, AZ 85719 &bull;
         #22207388
      </div>

      <div style=3D"color:#a9a9a9;margin-top:2px;font-size:13px;font-weight=
:100;">
        Active
      </div>
    </td>
  </tr>


  <tr valign=3D"top">
    <td style=3D"width:150px;height:118px;padding:9px;padding-top:23px;over=
flow:hidden;border-top:1px
solid #E0E0E0;">
      <div style=3D"width:150px;height:100px;overflow:hidden;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220322153830251695000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d"><img
alt=3D"Listing Update" width=3D"150" style=3D"width:150px;max-height:100px;=
"
src=3D"http://cdn.photos.sparkplatform.com/tar/20220324053229134911000000.j=
pg"
/></a>
      </div>
    </td>
    <td style=3D"height:118px;overflow:hidden;border-top:1px solid #E0E0E0;=
">
      <div style=3D"font-size:19px;">
        <a style=3D"color:#000000;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220322153830251695000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">$349,=
000</a>
      </div>

        <div style=3D"color:#5c8cd7;font-size:18px;margin-top:3px;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220322153830251695000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">5813
E Bellevue Street</a>
        </div>

      <div style=3D"color:#a9a9a9;font-size:13px;font-weight:100;margin-top=
:2px;">
          Tucson, AZ 85712 &bull;
         #22207487
      </div>

      <div style=3D"color:#a9a9a9;margin-top:2px;font-size:13px;font-weight=
:100;">
        <span style=3D'color:#6db267;font-weight:normal;'>New Listing</span=
>
      </div>
    </td>
  </tr>


  <tr valign=3D"top">
    <td style=3D"width:150px;height:118px;padding:9px;padding-top:23px;over=
flow:hidden;border-top:1px
solid #E0E0E0;">
      <div style=3D"width:150px;height:100px;overflow:hidden;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220324181524323307000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d"><img
alt=3D"Listing Update" width=3D"150" style=3D"width:150px;max-height:100px;=
"
src=3D"http://cdn.photos.sparkplatform.com/tar/20220324184755773572000000.j=
pg"
/></a>
      </div>
    </td>
    <td style=3D"height:118px;overflow:hidden;border-top:1px solid #E0E0E0;=
">
      <div style=3D"font-size:19px;">
        <a style=3D"color:#000000;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220324181524323307000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">$285,=
000</a>
      </div>

        <div style=3D"color:#5c8cd7;font-size:18px;margin-top:3px;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220324181524323307000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">4838
E Helen Street</a>
        </div>

      <div style=3D"color:#a9a9a9;font-size:13px;font-weight:100;margin-top=
:2px;">
          Tucson, AZ 85712 &bull;
         #22207480
      </div>

      <div style=3D"color:#a9a9a9;margin-top:2px;font-size:13px;font-weight=
:100;">
        <span style=3D'color:#6db267;font-weight:normal;'>New Listing</span=
>
      </div>
    </td>
  </tr>


  <tr valign=3D"top">
    <td style=3D"width:150px;height:118px;padding:9px;padding-top:23px;over=
flow:hidden;border-top:1px
solid #E0E0E0;">
      <div style=3D"width:150px;height:100px;overflow:hidden;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220305060352204933000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d"><img
alt=3D"Listing Update" width=3D"150" style=3D"width:150px;max-height:100px;=
"
src=3D"http://cdn.photos.sparkplatform.com/tar/20220305070812731214000000.j=
pg"
/></a>
      </div>
    </td>
    <td style=3D"height:118px;overflow:hidden;border-top:1px solid #E0E0E0;=
">
      <div style=3D"font-size:19px;">
        <a style=3D"color:#000000;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220305060352204933000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">$324,=
000</a>
      </div>

        <div style=3D"color:#5c8cd7;font-size:18px;margin-top:3px;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220305060352204933000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">5911
E Oak Street</a>
        </div>

      <div style=3D"color:#a9a9a9;font-size:13px;font-weight:100;margin-top=
:2px;">
          Tucson, AZ 85711 &bull;
         #22205827
      </div>

      <div style=3D"color:#a9a9a9;margin-top:2px;font-size:13px;font-weight=
:100;">
        <img src=3D'https://cdn.assets.flexmls.com/1.8.36/gabby/icon_listin=
g_change_refresh_green.png'
style=3D'margin-right: 3px;' alt=3D''> <span
style=3D'color:#6db267;font-weight:normal;'>Active</span>
      </div>
    </td>
  </tr>


  <tr valign=3D"top">
    <td style=3D"width:150px;height:118px;padding:9px;padding-top:23px;over=
flow:hidden;border-top:1px
solid #E0E0E0;">
      <div style=3D"width:150px;height:100px;overflow:hidden;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220119231024964898000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d"><img
alt=3D"Listing Update" width=3D"150" style=3D"width:150px;max-height:100px;=
"
src=3D"http://cdn.photos.sparkplatform.com/tar/20220205060516580541000000.j=
pg"
/></a>
      </div>
    </td>
    <td style=3D"height:118px;overflow:hidden;border-top:1px solid #E0E0E0;=
">
      <div style=3D"font-size:19px;">
        <a style=3D"color:#6db267;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220119231024964898000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d"><img
src=3D'https://cdn.assets.flexmls.com/1.8.36/gabby/icon_listing_change_arro=
w_green.png'
style=3D'margin-right:8px' alt=3D''>$379,900</a>
      </div>

        <div style=3D"color:#5c8cd7;font-size:18px;margin-top:3px;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220119231024964898000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">2637
N Wilson Avenue</a>
        </div>

      <div style=3D"color:#a9a9a9;font-size:13px;font-weight:100;margin-top=
:2px;">
          Tucson, AZ 85719 &bull;
         #22201743
      </div>

      <div style=3D"color:#a9a9a9;margin-top:2px;font-size:13px;font-weight=
:100;">
        Active
      </div>
    </td>
  </tr>


  <tr valign=3D"top">
    <td style=3D"width:150px;height:118px;padding:9px;padding-top:23px;over=
flow:hidden;border-top:1px
solid #E0E0E0;">
      <div style=3D"width:150px;height:100px;overflow:hidden;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220315203632352213000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d"><img
alt=3D"Listing Update" width=3D"150" style=3D"width:150px;max-height:100px;=
"
src=3D"http://cdn.photos.sparkplatform.com/tar/20220323192250761696000000.j=
pg"
/></a>
      </div>
    </td>
    <td style=3D"height:118px;overflow:hidden;border-top:1px solid #E0E0E0;=
">
      <div style=3D"font-size:19px;">
        <a style=3D"color:#000000;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220315203632352213000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">$420,=
000</a>
      </div>

        <div style=3D"color:#5c8cd7;font-size:18px;margin-top:3px;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220315203632352213000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">3014
E Lester Street</a>
        </div>

      <div style=3D"color:#a9a9a9;font-size:13px;font-weight:100;margin-top=
:2px;">
          Tucson, AZ 85716 &bull;
         #22206679
      </div>

      <div style=3D"color:#a9a9a9;margin-top:2px;font-size:13px;font-weight=
:100;">
        Active
      </div>
    </td>
  </tr>


  <tr valign=3D"top">
    <td style=3D"width:150px;height:118px;padding:9px;padding-top:23px;over=
flow:hidden;border-top:1px
solid #E0E0E0;">
      <div style=3D"width:150px;height:100px;overflow:hidden;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220321184007646933000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d"><img
alt=3D"Listing Update" width=3D"150" style=3D"width:150px;max-height:100px;=
"
src=3D"http://cdn.photos.sparkplatform.com/tar/20220324180734500857000000.j=
pg"
/></a>
      </div>
    </td>
    <td style=3D"height:118px;overflow:hidden;border-top:1px solid #E0E0E0;=
">
      <div style=3D"font-size:19px;">
        <a style=3D"color:#000000;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220321184007646933000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">$329,=
900</a>
      </div>

        <div style=3D"color:#5c8cd7;font-size:18px;margin-top:3px;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220321184007646933000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">3344
N Park Avenue</a>
        </div>

      <div style=3D"color:#a9a9a9;font-size:13px;font-weight:100;margin-top=
:2px;">
          Tucson, AZ 85719 &bull;
         #22207474
      </div>

      <div style=3D"color:#a9a9a9;margin-top:2px;font-size:13px;font-weight=
:100;">
        <span style=3D'color:#6db267;font-weight:normal;'>New Listing</span=
>
      </div>
    </td>
  </tr>


  <tr valign=3D"top">
    <td style=3D"width:150px;height:118px;padding:9px;padding-top:23px;over=
flow:hidden;border-top:1px
solid #E0E0E0;">
      <div style=3D"width:150px;height:100px;overflow:hidden;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220211170619623770000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d"><img
alt=3D"Listing Update" width=3D"150" style=3D"width:150px;max-height:100px;=
"
src=3D"http://cdn.photos.sparkplatform.com/tar/20220226023225465168000000.j=
pg"
/></a>
      </div>
    </td>
    <td style=3D"height:118px;overflow:hidden;border-top:1px solid #E0E0E0;=
">
      <div style=3D"font-size:19px;">
        <a style=3D"color:#6db267;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220211170619623770000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d"><img
src=3D'https://cdn.assets.flexmls.com/1.8.36/gabby/icon_listing_change_arro=
w_green.png'
style=3D'margin-right:8px' alt=3D''>$634,000</a>
      </div>

        <div style=3D"color:#5c8cd7;font-size:18px;margin-top:3px;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220211170619623770000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">2416
E 4Th Street</a>
        </div>

      <div style=3D"color:#a9a9a9;font-size:13px;font-weight:100;margin-top=
:2px;">
          Tucson, AZ 85719 &bull;
         #22205137
      </div>

      <div style=3D"color:#a9a9a9;margin-top:2px;font-size:13px;font-weight=
:100;">
        Active
      </div>
    </td>
  </tr>


  <tr valign=3D"top">
    <td style=3D"width:150px;height:118px;padding:9px;padding-top:23px;over=
flow:hidden;border-top:1px
solid #E0E0E0;">
      <div style=3D"width:150px;height:100px;overflow:hidden;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220208055052741746000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d"><img
alt=3D"Listing Update" width=3D"150" style=3D"width:150px;max-height:100px;=
"
src=3D"http://cdn.photos.sparkplatform.com/tar/20220309161941931330000000.j=
pg"
/></a>
      </div>
    </td>
    <td style=3D"height:118px;overflow:hidden;border-top:1px solid #E0E0E0;=
">
      <div style=3D"font-size:19px;">
        <a style=3D"color:#000000;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220208055052741746000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">$310,=
000</a>
      </div>

        <div style=3D"color:#5c8cd7;font-size:18px;margin-top:3px;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220208055052741746000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">5753
E Eastland Street</a>
        </div>

      <div style=3D"color:#a9a9a9;font-size:13px;font-weight:100;margin-top=
:2px;">
          Tucson, AZ 85711 &bull;
         #22206133
      </div>

      <div style=3D"color:#a9a9a9;margin-top:2px;font-size:13px;font-weight=
:100;">
        Active
      </div>
    </td>
  </tr>


  <tr valign=3D"top">
    <td style=3D"width:150px;height:118px;padding:9px;padding-top:23px;over=
flow:hidden;border-top:1px
solid #E0E0E0;">
      <div style=3D"width:150px;height:100px;overflow:hidden;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220314195313187057000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d"><img
alt=3D"Listing Update" width=3D"150" style=3D"width:150px;max-height:100px;=
"
src=3D"http://cdn.photos.sparkplatform.com/tar/20220319173311416691000000.j=
pg"
/></a>
      </div>
    </td>
    <td style=3D"height:118px;overflow:hidden;border-top:1px solid #E0E0E0;=
">
      <div style=3D"font-size:19px;">
        <a style=3D"color:#000000;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220314195313187057000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">$389,=
000</a>
      </div>

        <div style=3D"color:#5c8cd7;font-size:18px;margin-top:3px;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220314195313187057000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">2001
N Nancy Rose Boulevard</a>
        </div>

      <div style=3D"color:#a9a9a9;font-size:13px;font-weight:100;margin-top=
:2px;">
          Tucson, AZ 85712 &bull;
         #22207127
      </div>

      <div style=3D"color:#a9a9a9;margin-top:2px;font-size:13px;font-weight=
:100;">
        Active
      </div>
    </td>
  </tr>


  <tr valign=3D"top">
    <td style=3D"width:150px;height:118px;padding:9px;padding-top:23px;over=
flow:hidden;border-top:1px
solid #E0E0E0;">
      <div style=3D"width:150px;height:100px;overflow:hidden;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220322175723101044000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d"><img
alt=3D"Listing Update" width=3D"150" style=3D"width:150px;max-height:100px;=
"
src=3D"http://cdn.photos.sparkplatform.com/tar/20220325163715487706000000.j=
pg"
/></a>
      </div>
    </td>
    <td style=3D"height:118px;overflow:hidden;border-top:1px solid #E0E0E0;=
">
      <div style=3D"font-size:19px;">
        <a style=3D"color:#000000;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220322175723101044000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">$253,=
000</a>
      </div>

        <div style=3D"color:#5c8cd7;font-size:18px;margin-top:3px;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220322175723101044000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">1416
N Bryant Avenue</a>
        </div>

      <div style=3D"color:#a9a9a9;font-size:13px;font-weight:100;margin-top=
:2px;">
          Tucson, AZ 85712 &bull;
         #22207312
      </div>

      <div style=3D"color:#a9a9a9;margin-top:2px;font-size:13px;font-weight=
:100;">
        Active
      </div>
    </td>
  </tr>


  <tr valign=3D"top">
    <td style=3D"width:150px;height:118px;padding:9px;padding-top:23px;over=
flow:hidden;border-top:1px
solid #E0E0E0;">
      <div style=3D"width:150px;height:100px;overflow:hidden;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220314070948840414000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d"><img
alt=3D"Listing Update" width=3D"150" style=3D"width:150px;max-height:100px;=
"
src=3D"http://cdn.photos.sparkplatform.com/tar/20220317054652437985000000.j=
pg"
/></a>
      </div>
    </td>
    <td style=3D"height:118px;overflow:hidden;border-top:1px solid #E0E0E0;=
">
      <div style=3D"font-size:19px;">
        <a style=3D"color:#000000;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220314070948840414000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">$649,=
500</a>
      </div>

        <div style=3D"color:#5c8cd7;font-size:18px;margin-top:3px;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220314070948840414000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">2525
E Glenn Street</a>
        </div>

      <div style=3D"color:#a9a9a9;font-size:13px;font-weight:100;margin-top=
:2px;">
          Tucson, AZ 85716 &bull;
         #22206798
      </div>

      <div style=3D"color:#a9a9a9;margin-top:2px;font-size:13px;font-weight=
:100;">
        Active
      </div>
    </td>
  </tr>


  <tr valign=3D"top">
    <td style=3D"width:150px;height:118px;padding:9px;padding-top:23px;over=
flow:hidden;border-top:1px
solid #E0E0E0;">
      <div style=3D"width:150px;height:100px;overflow:hidden;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220112000614172670000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d"><img
alt=3D"Listing Update" width=3D"150" style=3D"width:150px;max-height:100px;=
"
src=3D"http://cdn.photos.sparkplatform.com/tar/20220313155150899022000000.j=
pg"
/></a>
      </div>
    </td>
    <td style=3D"height:118px;overflow:hidden;border-top:1px solid #E0E0E0;=
">
      <div style=3D"font-size:19px;">
        <a style=3D"color:#000000;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220112000614172670000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">$320,=
000</a>
      </div>

        <div style=3D"color:#5c8cd7;font-size:18px;margin-top:3px;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220112000614172670000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">3955
E Poe Street</a>
        </div>

      <div style=3D"color:#a9a9a9;font-size:13px;font-weight:100;margin-top=
:2px;">
          Tucson, AZ 85711 &bull;
         #22206541
      </div>

      <div style=3D"color:#a9a9a9;margin-top:2px;font-size:13px;font-weight=
:100;">
        Active
      </div>
    </td>
  </tr>


  <tr valign=3D"top">
    <td style=3D"width:150px;height:118px;padding:9px;padding-top:23px;over=
flow:hidden;border-top:1px
solid #E0E0E0;">
      <div style=3D"width:150px;height:100px;overflow:hidden;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220301231848552273000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d"><img
alt=3D"Listing Update" width=3D"150" style=3D"width:150px;max-height:100px;=
"
src=3D"http://cdn.photos.sparkplatform.com/tar/20220316232320924360000000.j=
pg"
/></a>
      </div>
    </td>
    <td style=3D"height:118px;overflow:hidden;border-top:1px solid #E0E0E0;=
">
      <div style=3D"font-size:19px;">
        <a style=3D"color:#000000;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220301231848552273000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">$685,=
000</a>
      </div>

        <div style=3D"color:#5c8cd7;font-size:18px;margin-top:3px;">
          <a style=3D"color:#5c8cd7;text-decoration:none;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&start_id=
=3D20220301231848552273000000&eid=3Db5880703a04e5ecb1f4d97119b6d4f7d">2610
E Lee Street</a>
        </div>

      <div style=3D"color:#a9a9a9;font-size:13px;font-weight:100;margin-top=
:2px;">
          Tucson, AZ 85716 &bull;
         #22207229
      </div>

      <div style=3D"color:#a9a9a9;margin-top:2px;font-size:13px;font-weight=
:100;">
        Active
      </div>
    </td>
  </tr>




</table>





    <div class=3D"custom-message" style=3D"margin-top: 10px; color: #444">
      The last 25 updated listings for your subscription are shown in
this email. Please click View Listings to view more updated listings.
</div>
  <div style=3D"text-align: center; margin-top: 50px;"><a style=3D"color:
white; background-color: #4a76cd; text-decoration: none;
text-transform: uppercase; font-size: 14px; line-height: 14px;
padding: 12px 20px; border-radius: 3px; font-weight: bold;"
href=3D"https://www.flexmls.com/notifications.html?agent_id=3D2016071216094=
9869486000000&newsfeed_id=3D20210408182626386503478150&contact_id=3D2019020=
6165051466854000000&notification_id=3D20220327101104378512000000&eid=3Db588=
0703a04e5ecb1f4d97119b6d4f7d">View
Listings</a></div>



      <div style=3D"margin-top: 50px"><hr
style=3D"color:#d9d9d9;background-color:#d9d9d9;height:1px;border:none;marg=
in-top:25px;margin-bottom:25px;"></hr>
       <div>
          <div style=3D"margin-right:20px; float:left">
            <img style=3D'max-width: 100px; max-height: 100px;'
src=3D'https://cdn.photos.sparkplatform.com/tar/20180220221543745687000000.=
jpg'>
</img>
          </div>
          <div style=3D"float:left; max-width:270px;">
            <div style=3D"font-size: 15px; line-height: 20px;
font-weight: bold; color: #333">Sarah Perry</div>

              <div style=3D"font-size: 15px; line-height: 20px;
font-weight: regular; color: #333">1st Heritage Realty</div>


              <div style=3D"font-size: 14px; line-height: 20px; color: #969=
696">
                T:
                <a style=3D'color: #969696;text-decoration:none;'
href=3D"tel:520-820-8651">520-820-8651</a>
              </div>


              <div style=3D"font-size: 14px; line-height: 20px; color: #969=
696">
                License #: SA664926000
              </div>

          </div>
          <div style=3D"clear:both;"></div>

        </div>
</div>

      <footer style=3D"color: #666; font-size: 14px; line-height: 16px;
margin-top: 50px">You are receiving this email because of your
affiliation with Sarah Perry, 721 N 4th Avenue, Tucson, AZ
85705.<br></br><a style=3D"color: #7395d9"
href=3D"https://apps.flexmls.com/people/public/coi/201607121609498694860000=
00/email/davidchristy520@gmail.com?token=3Dc3RCckFzK240bFRJQ281STRnRzdmVkZ4=
TElycnc0TE02SDcvL3BIeWgvWUNDT0lTSFgzcDRvbjI0YUNGTjFpWmk1SW1iUFc0Q2hpOWIrM3J=
CeDVuNXc9PS0tTUZLSy9VVENJVEU0YzVldE1PMm5LUT09--f1a62c35990ef0c71d524d19e905=
9e85f927a51b">Unsubscribe
or manage notifications by clicking here</a></footer>

      <img alt=3D""
src=3D"http://collect.flexmls.com/c.gif?service=3Dapp.prod.gabby_gale.mailo=
pen&l=3Dtrue&c=3D1&rid=3Debb5e56d41fd5510d8b9c325&uuid=3D20220327-9a6803bb6=
e3bad11053c7eae&mailer=3DNewsfeedMailer"
/>
    </div>

<img border=3D"0" width=3D"1" height=3D"1" alt=3D""
src=3D"http://t.flexmail.flexmls.com/q/78EZ1HZgoFTF2CZ_y1Kx4w~~/AAQYRwA~/Rg=
RkIr05PlcDc3BjQgpiPjk4QGIgw9kaUhlkYXZpZGNocmlzdHk1MjBAZ21haWwuY29tWAQAAAAA"=
>
</body>
</html>
