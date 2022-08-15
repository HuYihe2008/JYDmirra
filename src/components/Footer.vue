<script setup lang="ts">
import { useI18n } from 'vue-i18n';
import {
  NH2,
  NP,
  NSpace,
  NDropdown,
  NButton,
  NButtonGroup,
  NIcon,
  MenuOption
} from 'naive-ui';
import { BugOutline, CodeOutline, MaleOutline } from '@vicons/ionicons5';

const { t } = useI18n();
const reports = [
  {
    label: '邮箱',
    key: 'mailto:2812856215@qq.com'
  },
  {
    label: 'GitHub',
    key: 'https://github.com/HuYihe2008/JYDmirra/issues'
  }
] as MenuOption[];

function handleSelect(key: string) {
  window.open(key);
}
</script>

<template>
  <n-h2 prefix="bar">{{ t('mirror') }}</n-h2>
  <n-space justify="space-between">
    <div>
      <n-p class="footer-text">{{
        t('footer.maintainer', { name: 'JamYido' })
      }}</n-p>
      <n-p class="footer-text">{{
        t('footer.developer', { name: '2812856215@qq.com' })
      }}</n-p>
      <n-p class="footer-text">{{ t('footer.special') }}</n-p>
    </div>
    <n-button-group vertical>
      <n-dropdown
        trigger="click"
        @select="handleSelect"
        placement="left-start"
        :options="reports"
      >
        <n-button text>
          <template #icon>
            <n-icon size="16">
              <bug-outline />
            </n-icon>
          </template>
          {{ t('footer.bug') }}
        </n-button>
      </n-dropdown>
      <n-button text @click="handleSelect('https://github.com/HuYihe2008/JYDmirra')">
        <template #icon>
          <n-icon size="16">
            <code-outline />
          </n-icon>
        </template>
        {{ t('footer.source') }}
      </n-button>
      <n-button text @click="handleSelect('https://github.com/HuYihe2008/')">
        <template #icon>
          <n-icon size="16">
            <male-outline />
          </n-icon>
        </template>
        {{ t('footer.lug') }}
      </n-button>
    </n-button-group>
  </n-space>
  <n-p>本镜像站的所有著作权归JamYido所有</n-p>
</template>

<style scoped lang="less">
.footer-text {
  font-size: 16px;
  margin: 4px 0;
}
</style>
