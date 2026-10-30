package com.microsoft.xbox.service.network.managers;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public final class NeverListResultContainer {

    public static class NeverListResult {
        public ArrayList<NeverUser> users = new ArrayList<>();

        public void add(String str) {
            this.users.add(new NeverUser(str));
        }

        public NeverUser remove(String str) {
            for (NeverUser neverUser : this.users) {
                if (neverUser.xuid.equalsIgnoreCase(str)) {
                    this.users.remove(neverUser);
                    return neverUser;
                }
            }
            return null;
        }

        public boolean contains(String str) {
            Iterator<NeverUser> it = this.users.iterator();
            while (it.hasNext()) {
                if (it.next().xuid.equalsIgnoreCase(str)) {
                    return true;
                }
            }
            return false;
        }
    }

    public static class NeverUser {
        public String xuid;

        public NeverUser(String str) {
            this.xuid = str;
        }
    }
}
