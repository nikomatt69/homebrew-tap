# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-10-02T23:17:24.626Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.422.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.422.0/nikcli-ai-darwin-x64.zip"
      sha256 "701298a2a4b7470eda889a95b60c00883805f393fc739e06977a27c96dddfc01"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.422.0/nikcli-ai-darwin-arm64.zip"
      sha256 "88953fe21f5f26a3504b0ef4d81f3d5b201b945abe85157c4c9a4c079a911d64"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.422.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "f66a2bbede52df0a03dc74d0c9957eda630343c067ee692158a5b3815189da35"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.422.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "9e336f285ba3a6afe387378e498403341e461f443415fdffbb01020a3e9bf38e"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

