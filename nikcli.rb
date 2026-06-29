# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-29T17:08:29.356Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.128.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.128.0/nikcli-ai-darwin-x64.zip"
      sha256 "15a26abc7a56d47c48e25c3f286946397cee0323f78a625c1196e74db1aac7ce"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.128.0/nikcli-ai-darwin-arm64.zip"
      sha256 "a8b7698c8e4d52003aade142d37610dd8fd22db6189b40408e414f399733feb8"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.128.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "d191f76a692d290414cd42d4aab91fcf06719bd9d00e42fdda932db747dc9819"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.128.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "4fee69d137f9d22d1a88a6ea019978e7522ab707d604212b319e007f4e496357"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

